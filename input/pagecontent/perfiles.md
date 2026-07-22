# Perfiles FHIR

Esta sección describe los perfiles FHIR definidos por la Guía Core FHIR República Dominicana.

Los perfiles Core establecen restricciones, cardinalidades, elementos obligatorios, extensiones y bindings terminológicos comunes que pueden ser reutilizados por guías derivadas.

---

### Propósito

Los perfiles Core permiten representar entidades comunes del ecosistema de salud nacional de manera consistente.

Estos perfiles no corresponden a un único caso de uso clínico, sino que sirven como base para implementaciones nacionales, institucionales y sectoriales.

---

### Perfiles Principales

| Perfil | Recurso Base | Descripción |
|--------|--------------|-------------|
| CorePatientDO | `Patient` | Representación base de pacientes. |
| CorePractitionerDO | `Practitioner` | Representación base de profesionales de salud. |
| CorePractitionerRoleDO | `PractitionerRole` | Representación de roles, especialidades y adscripciones. |
| CoreOrganizationDO | `Organization` | Representación base de organizaciones y establecimientos. |
| CoreLocationDO | `Location` | Representación de ubicaciones físicas. |
| CoreConditionDO | `Condition` | Representación base de condiciones clínicas. |
| CoreAllergyIntoleranceDO | `AllergyIntolerance` | Representación base de alergias e intolerancias. |
| CoreMedicationDO | `Medication` | Representación base de medicamentos. |
| CoreMedicationStatementDO | `MedicationStatement` | Representación de historial farmacológico. |
| CoreMedicationRequestDO | `MedicationRequest` | Representación de solicitudes o prescripciones de medicamentos. |
| CoreCompositionDO | `Composition` | Representación base de documentos clínicos. |

---

### Reglas Generales para Perfiles

Todo recurso que declare conformidad con un perfil Core debe:

- Ser válido contra HL7 FHIR R4.
- Declarar el perfil en `meta.profile`.
- Cumplir las cardinalidades definidas.
- Utilizar los sistemas de identificación definidos por la guía.
- Usar las extensiones nacionales cuando correspondan.
- Cumplir los bindings terminológicos definidos.
- Mantener referencias resolubles hacia otros recursos.

---

### Declaración de Perfil

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

### Relación con Guías Derivadas

| Guía Derivada | Uso de Core |
|--------------|-------------|
| IPS | Reutiliza pacientes, organizaciones, condiciones, alergias y medicamentos. |
| Receta Electrónica | Reutiliza pacientes, profesionales, organizaciones y medicamentos. |
| Laboratorio | Reutiliza pacientes, organizaciones, observaciones y reportes diagnósticos. |
| Registro de Cáncer | Reutiliza pacientes, organizaciones, condiciones y observaciones. |
