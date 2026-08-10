#!/usr/bin/env python3
"""Generador de ejemplos FSH minimalistas para perfiles existentes.

Uso:
    python generate_fsh_example.py PractitionerDO
    python generate_fsh_example.py PatientDO --output-dir input/fsh/examples

El script busca el archivo .fsh que contiene el perfil y genera un archivo
con un ejemplo esqueleto que incluye los campos obligatorios detectados.
"""

from __future__ import annotations

import argparse
import re
from pathlib import Path
from typing import Iterable

PROFILE_RE = re.compile(r"^\s*Profile:\s*(\S+)\s*$")
FIELD_RE = re.compile(r"^\s*\*\s+([^\s]+)\s+([0-9]+\.{2}[0-9\*]+)")


def find_profile_file(root: Path, profile_name: str) -> Path | None:
    for path in root.rglob("*.fsh"):
        text = path.read_text(encoding="utf-8")
        if re.search(rf"^\s*Profile:\s*{re.escape(profile_name)}\s*$", text, re.MULTILINE):
            return path
    return None


def parse_required_fields(profile_text: str, profile_name: str) -> list[str]:
    lines = profile_text.splitlines()
    in_profile = False
    fields: list[str] = []
    for line in lines:
        if not in_profile:
            profile_match = PROFILE_RE.match(line)
            if profile_match and profile_match.group(1) == profile_name:
                in_profile = True
            continue

        next_profile = PROFILE_RE.match(line)
        if next_profile and next_profile.group(1) != profile_name:
            break

        stripped = line.split("//", 1)[0].strip()
        if not stripped.startswith("*"):
            continue

        match = FIELD_RE.match(stripped)
        if not match:
            continue

        path = match.group(1).strip()
        cardinality = match.group(2).strip()
        if cardinality.startswith("1.."):
            fields.append(path)
    return fields


def make_example_value(path: str) -> str:
    path_lower = path.lower()
    if path_lower.endswith(".reference") or path_lower in {"patient", "subject", "custodian", "author", "recorder", "organization", "practitioner", "location"}:
        if "patient" in path_lower:
            return "Reference(PatientDO/PatientEjemplo)"
        if "practitioner" in path_lower:
            return "Reference(PractitionerDO/PractitionerEjemplo)"
        if "organization" in path_lower or "custodian" in path_lower:
            return "Reference(OrganizationDO/OrganizationEjemplo)"
        return "Reference(PatientDO/PatientEjemplo)"

    if path_lower.endswith("identifier"):
        return "Identifier(\"http://example.org/ids\", \"12345\")"
    if path_lower.endswith("identifier.system"):
        return '"http://example.org/ids"'
    if path_lower.endswith("identifier.value"):
        return '"12345"'
    if path_lower.endswith("identifier.type"):
        return "#official"
    if path_lower.endswith("name.given"):
        return '"Juan"'
    if path_lower.endswith("name.family"):
        return '"Pérez"'
    if path_lower.endswith("qualification.code") or path_lower.endswith("type") or path_lower.endswith("code"):
        return "#MG"
    if path_lower.endswith("gender"):
        return "#male"
    if path_lower.endswith("status"):
        return "#current"
    if path_lower.endswith("birthdate") or path_lower.endswith("date"):
        return '"2025-01-01"'
    if path_lower.endswith("telecom") or path_lower.endswith("telecom[0].system"):
        return "#phone"
    if path_lower.endswith("telecom[0].value") or path_lower.endswith("value"):
        return '"8091234567"'
    if path_lower.endswith("address"):
        return '"Calle 123"'
    if path_lower.endswith("address.country"):
        return '"DO"'
    if path_lower.endswith("address.state"):
        return '"Santo Domingo"'
    if path_lower.endswith("address.city"):
        return '"Santo Domingo"'
    if path_lower.endswith("name"):
        return '"Ejemplo"'
    if "coding" in path_lower:
        return "#MG"
    if path_lower.endswith("qualification"):
        return "#MG"
    if path_lower.endswith("value"):
        return '"valor"'
    if path_lower.endswith("system"):
        return '"http://example.org/system"'
    return '"Ejemplo"'


def normalize_example_path(path: str) -> str:
    if "." in path:
        return path
    if path.endswith("identifier") or path.endswith("name") or path.endswith("telecom") or path.endswith("address") or path.endswith("qualification"):
        return f"{path}[0]"
    return path


def build_instance(profile_name: str, field_paths: Iterable[str]) -> str:
    lines = [
        f"Instance: {profile_name}Ejemplo",
        f"InstanceOf: {profile_name}",
        "Usage: #example",
        f"Title: \"Ejemplo de {profile_name}\"",
        f"Description: \"Esqueleto de ejemplo para {profile_name}.\"",
        ""
    ]

    seen: set[str] = set()
    for path in field_paths:
        example_path = normalize_example_path(path)
        if example_path in seen:
            continue
        seen.add(example_path)
        value = make_example_value(example_path)
        lines.append(f"* {example_path} = {value}")
    if len(lines) == 5:
        lines.append("* id = \"example-id\"")
    return "\n".join(lines) + "\n"


def main() -> int:
    parser = argparse.ArgumentParser(description="Genera un archivo de ejemplo FSH para un perfil existente.")
    parser.add_argument("profile", help="Nombre del perfil FSH, por ejemplo PractitionerDO")
    parser.add_argument("--fsh-root", default="input/fsh", help="Carpeta raíz donde buscar archivos FSH")
    parser.add_argument("--output-dir", default="input/fsh/examples", help="Directorio donde escribir el archivo de ejemplo")
    args = parser.parse_args()

    repo_root = Path(__file__).resolve().parent
    fsh_root = repo_root / args.fsh_root
    output_dir = repo_root / args.output_dir

    profile_file = find_profile_file(fsh_root, args.profile)
    if profile_file is None:
        print(f"No se encontró el perfil {args.profile} en {fsh_root}")
        return 1

    profile_text = profile_file.read_text(encoding="utf-8")
    required_fields = parse_required_fields(profile_text, args.profile)
    if not required_fields:
        print(f"No se detectaron campos obligatorios para {args.profile}. Se generará un ejemplo básico.")

    output_dir.mkdir(parents=True, exist_ok=True)
    output_file = output_dir / f"{args.profile}Example.fsh"
    output_file.write_text(build_instance(args.profile, required_fields), encoding="utf-8")

    print(f"Ejemplo generado: {output_file}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
