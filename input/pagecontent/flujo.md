# Flujo de Intercambio

Esta sección describe los lineamientos generales para el intercambio de información utilizando los perfiles definidos en la Guía Core FHIR República Dominicana.

La Guía Core no define un flujo clínico único, sino patrones comunes que pueden ser reutilizados por guías derivadas como IPS, receta electrónica, laboratorio, vigilancia epidemiológica, referencia y contrarreferencia, entre otras.

---

### Actores Principales

| Actor | Descripción |
|------|-------------|
| Sistema Fuente | Sistema que produce o registra la información clínica o administrativa. |
| Sistema Consumidor | Sistema que consulta, recibe o procesa información FHIR. |
| Servidor FHIR | Plataforma que expone recursos FHIR mediante API RESTful. |
| Terminology Server | Servicio utilizado para validación, expansión y consulta de terminologías. |
| Repositorio Nacional | Plataforma nacional o institucional que almacena recursos interoperables. |
| Autoridad de Salud | Entidad responsable de gobernanza, vigilancia, regulación o análisis de datos. |

---

### Patrón General de Intercambio

El patrón general recomendado es el intercambio mediante API RESTful FHIR.

```text
Sistema Fuente
   ↓
Servidor FHIR / API de Interoperabilidad
   ↓
Sistema Consumidor / Repositorio Nacional
```

Los recursos intercambiados deben declarar el perfil correspondiente mediante `meta.profile`.

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

### Operaciones FHIR Recomendadas

| Operación | Uso |
|----------|-----|
| `POST` | Crear un nuevo recurso. |
| `PUT` | Actualizar o reemplazar un recurso identificado. |
| `GET` | Consultar recursos existentes. |
| `PATCH` | Actualizar parcialmente un recurso, cuando sea soportado. |
| `Bundle transaction` | Enviar múltiples recursos de forma atómica. |
| `Bundle batch` | Enviar múltiples recursos de forma no atómica. |

---

### Identificación de Recursos

Los sistemas deben utilizar identificadores persistentes en los elementos `identifier`, evitando depender exclusivamente del `id` lógico del recurso.

Ejemplos de dominios que requieren identificadores consistentes:

- Pacientes.
- Profesionales de salud.
- Organizaciones.
- Establecimientos.
- Documentos clínicos.
- Solicitudes.
- Medicamentos.
- Episodios o encuentros clínicos.

---

### Uso de Bundle

Cuando se intercambien múltiples recursos relacionados, se recomienda utilizar `Bundle`.

| Tipo de Bundle | Uso recomendado |
|---------------|-----------------|
| `transaction` | Cuando todos los recursos deben procesarse como una unidad atómica. |
| `batch` | Cuando los recursos pueden procesarse de manera independiente. |
| `document` | Para documentos clínicos firmados o persistentes. |
| `collection` | Para agrupaciones sin semántica transaccional. |
| `searchset` | Para respuestas de búsqueda. |

---

### Validación Previa al Envío

Antes de enviar recursos a un servidor FHIR, el sistema fuente debe validar:

- Conformidad con FHIR R4.
- Conformidad con el perfil declarado en `meta.profile`.
- Cardinalidades obligatorias.
- Terminologías requeridas.
- Reglas de identificadores.
- Referencias entre recursos.
- Uso correcto de extensiones.
- Reglas de seguridad y privacidad.

---

### Manejo de Errores

Los errores deben representarse mediante `OperationOutcome`.

```json
{
  "resourceType": "OperationOutcome",
  "issue": [
    {
      "severity": "error",
      "code": "required",
      "diagnostics": "Patient.identifier es obligatorio."
    }
  ]
}
```

---

### Recomendaciones de Implementación

- Utilizar HTTPS para todo intercambio.
- Registrar auditoría de accesos y modificaciones.
- Mantener trazabilidad de origen de datos.
- Usar identificadores nacionales o institucionales estables.
- Evitar duplicidad de pacientes mediante reglas de emparejamiento.
- Validar terminologías contra ValueSets oficiales.
- Declarar siempre `meta.profile`.
- Utilizar `OperationOutcome` para reportar errores.
