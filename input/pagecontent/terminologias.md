# Terminologías

Esta sección describe los CodeSystems y ValueSets utilizados por la Guía Core FHIR República Dominicana.

Las terminologías permiten asegurar que los datos intercambiados tengan significado semántico consistente entre sistemas.

---

### Principios Terminológicos

- Usar terminologías internacionales cuando existan y sean aplicables.
- Usar catálogos nacionales para dominios administrativos locales.
- Definir CodeSystems locales únicamente cuando no exista una terminología estándar adecuada.
- Definir ValueSets explícitos para restringir los códigos permitidos.
- Mantener versiones de terminologías cuando sea posible.
- Evitar códigos de texto libre para elementos estructurados.

---

### Terminologías Internacionales Recomendadas

| Dominio | Terminología Recomendada |
|--------|---------------------------|
| Diagnósticos y problemas | SNOMED CT, ICD-10, ICD-11 según caso de uso |
| Observaciones y laboratorios | LOINC |
| Unidades de medida | UCUM |
| Medicamentos | Catálogo nacional, ATC, SNOMED CT Medicinal según disponibilidad |
| Procedimientos | SNOMED CT, catálogos nacionales |
| Confidencialidad | HL7 v3 Confidentiality |

---

### Terminologías Nacionales Iniciales

| CodeSystem / ValueSet | Descripción |
|-----------------------|-------------|
| TipoIdentificacionDO | Tipos de documentos de identificación aceptados. |
| TipoEstablecimientoDO | Clasificación nacional de establecimientos de salud. |
| EspecialidadDO | Especialidades o roles profesionales reconocidos localmente. |

---

### Uso de Bindings

| Fuerza | Descripción |
|-------|-------------|
| `required` | Solo se permiten códigos del ValueSet. |
| `extensible` | Debe usarse un código del ValueSet si existe un concepto adecuado. |
| `preferred` | Se recomienda usar códigos del ValueSet. |
| `example` | El ValueSet es ilustrativo. |

---

### Ejemplo de Coding

```json
{
  "coding": [
    {
      "system": "http://digital.msp.gob.do/fhir/core/CodeSystem/tipo-identificacion-do",
      "code": "CED",
      "display": "Cédula"
    }
  ]
}
```

---

### Servidor Terminológico

Se recomienda utilizar un servidor terminológico para validar códigos, expandir ValueSets, consultar descripciones, mantener versiones y gestionar equivalencias.
