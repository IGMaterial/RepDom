# Validación

Esta sección describe las reglas generales de validación aplicables a los recursos definidos por la Guía Core FHIR República Dominicana.

La validación tiene como objetivo asegurar que los recursos intercambiados sean sintácticamente correctos, estructuralmente conformes, semánticamente consistentes y procesables por sistemas interoperables.

---

### Niveles de Validación

| Nivel | Descripción |
|------|-------------|
| Sintáctica | Verifica que el recurso sea JSON o XML válido. |
| FHIR Base | Verifica conformidad con HL7 FHIR R4. |
| Perfil | Verifica conformidad con el perfil declarado en `meta.profile`. |
| Terminológica | Verifica códigos contra CodeSystems y ValueSets permitidos. |
| Referencial | Verifica que las referencias entre recursos sean válidas. |
| Reglas de Negocio | Verifica restricciones propias del contexto nacional o institucional. |

---

### Declaración de Perfil

Todo recurso que implemente esta guía debe declarar su perfil en `meta.profile`.

```json
{
  "resourceType": "Patient",
  "meta": {
    "profile": [
      "http://digital.msp.gob.do/fhir/core/StructureDefinition/CorePatientDO"
    ]
  }
}
```

---

### Reglas Generales

| Regla | Descripción |
|------|-------------|
| CORE-001 | Todo recurso debe ser válido contra FHIR R4. |
| CORE-002 | Todo recurso perfilado debe declarar `meta.profile`. |
| CORE-003 | Todo paciente debe tener al menos un identificador. |
| CORE-004 | Todo identificador debe incluir `system` y `value`. |
| CORE-005 | Toda organización debe tener nombre o identificador. |
| CORE-006 | Toda referencia debe apuntar a un recurso existente o resoluble. |
| CORE-007 | Los códigos deben pertenecer al ValueSet declarado cuando el binding sea required. |
| CORE-008 | Las extensiones nacionales deben utilizar la URL canónica definida por esta guía. |
| CORE-009 | Los datos de contacto deben representarse mediante `telecom`. |
| CORE-010 | Las direcciones deben representarse mediante `address` cuando aplique. |

---

### Validación Terminológica

Los sistemas deben validar los códigos usando los ValueSets definidos en la guía.

```text
Patient.identifier.type from TipoIdentificacionDOVS (required)
```

Cuando el binding sea `required`, solo se permiten códigos incluidos en el ValueSet.

Cuando el binding sea `extensible`, debe usarse un código del ValueSet si existe un concepto adecuado.

---

### Uso de FHIR Validator

```bash
java -jar validator_cli.jar paciente.json \
  -version 4.0.1 \
  -ig hl7.fhir.r4.core#4.0.1 \
  -ig package.tgz
```

---

### Resultado de Validación

Los errores y advertencias deben expresarse mediante `OperationOutcome`.

```json
{
  "resourceType": "OperationOutcome",
  "issue": [
    {
      "severity": "error",
      "code": "value",
      "diagnostics": "El código de tipo de identificación no pertenece al ValueSet permitido."
    }
  ]
}
```

---

### Validación en Procesos de Intercambio

Se recomienda validar antes del envío, al recibir el recurso y antes de consumirlo para procesos clínicos, analíticos o administrativos.
