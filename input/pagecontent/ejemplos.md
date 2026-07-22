# Ejemplos

Esta sección describe los ejemplos incluidos en la Guía Core FHIR República Dominicana.

Los ejemplos tienen como objetivo ilustrar el uso correcto de los perfiles, extensiones, identificadores y terminologías definidos por la guía.

---

### Propósito de los Ejemplos

- Orientar a implementadores.
- Validar recursos contra los perfiles definidos.
- Probar servidores FHIR.
- Verificar reglas de interoperabilidad.
- Facilitar pruebas de integración entre sistemas.

---

### Ejemplos Iniciales

| Ejemplo | Recurso | Descripción |
|--------|---------|-------------|
| Paciente Ejemplo | `Patient` | Paciente con identificador nacional, nombre, sexo/género y fecha de nacimiento. |
| Profesional Ejemplo | `Practitioner` | Profesional de salud con identificador y datos de contacto. |
| Organización Ejemplo | `Organization` | Establecimiento de salud con identificador, nombre y tipo. |
| Condición Ejemplo | `Condition` | Condición clínica asociada a un paciente. |
| Alergia Ejemplo | `AllergyIntolerance` | Alergia o intolerancia registrada para un paciente. |
| Medicamento Ejemplo | `Medication` | Medicamento codificado. |
| Documento Ejemplo | `Composition` | Documento clínico base. |
| Bundle Ejemplo | `Bundle` | Agrupación de recursos. |

---

### Ejemplo Simplificado

```json
{
  "resourceType": "Patient",
  "id": "paciente-ejemplo",
  "meta": {
    "profile": [
      "http://digital.msp.gob.do/fhir/core/StructureDefinition/CorePatientDO"
    ]
  },
  "extension": [
    {
      "url": "http://digital.msp.gob.do.gob.do/fhir/core/StructureDefinition/SegundoApellidoDO",
      "valueString": "García"
    }
  ],  
  "identifier": [
    {
      "system": "http://digital.msp.gob.do/fhir/sid/cedula",
      "value": "03105354985"
    }
  ],
  "name": [
    {
      "family": "Pérez",
      "given": [
        "María"
      ]
    }
  ],
  "gender": "female",
  "birthDate": "1985-04-12"
}
```

---

### Nota

Los ejemplos generados por el IG Publisher pueden consultarse en la sección de artefactos de la guía publicada.
