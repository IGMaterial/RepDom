# Extensiones

Esta sección describe las extensiones definidas por la Guía Core FHIR República Dominicana.

Las extensiones permiten representar información requerida por el contexto nacional que no está cubierta directamente por los elementos base de FHIR.

---

### Principios para el Uso de Extensiones

Las extensiones deben utilizarse únicamente cuando:

- FHIR base no tiene un elemento adecuado para representar el dato.
- El dato es necesario para interoperabilidad nacional.
- La semántica del dato debe conservarse de manera estructurada.
- No existe un perfil o patrón estándar que cubra el requerimiento.

---

### Reglas Generales

Toda extensión definida en esta guía debe tener URL canónica estable, definición clara, tipo de dato permitido, cardinalidad y justificación semántica.

---

### Extensiones Iniciales

| Extensión | Contexto | Descripción |
|----------|----------|-------------|
| SegundoApellidoDO | `HumanName` | Permite representar el segundo apellido cuando se requiere conservarlo de forma separada. |

---

### Ejemplo de Uso

```json
{
  "resourceType": "Patient",
  "extension": [
    {
      "url": "http://digital.msp.gob.do.gob.do/fhir/core/StructureDefinition/SegundoApellidoDO",
      "valueString": "García"
    }
  ]
}
```

---

### Recomendación

Antes de crear nuevas extensiones, se debe verificar si el dato puede representarse mediante un elemento base de FHIR, un perfil existente, una extensión oficial HL7 o una extensión Core ya definida.
