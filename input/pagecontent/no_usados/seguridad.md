# Seguridad

Esta sección establece consideraciones generales de seguridad, privacidad y trazabilidad para implementaciones basadas en la Guía Core FHIR República Dominicana.

La información de salud es información sensible y debe ser protegida durante su captura, almacenamiento, procesamiento, transmisión, consulta y eliminación.

---

### Principios Generales

- Confidencialidad.
- Integridad.
- Disponibilidad.
- Trazabilidad.
- Minimización de datos.
- Acceso basado en necesidad.
- Responsabilidad del usuario.
- Protección de datos personales y sensibles.
- Interoperabilidad segura.

---

### Transporte Seguro

Todo intercambio de información debe realizarse mediante canales seguros.

Requisitos mínimos:

- Uso obligatorio de HTTPS/TLS.
- Certificados digitales válidos.
- Prohibición de transmisión de datos sensibles por canales no cifrados.
- Validación de certificados en ambientes productivos.
- Separación entre ambientes de desarrollo, pruebas y producción.

---

### Autenticación

Los sistemas deben autenticar a usuarios, aplicaciones o servicios antes de permitir acceso a recursos FHIR.

Mecanismos recomendados:

- OAuth 2.0.
- OpenID Connect.
- SMART on FHIR cuando aplique.
- Certificados cliente para integraciones sistema-a-sistema.
- Tokens de acceso con expiración controlada.

---

### Autorización

El acceso a los recursos debe limitarse según rol, propósito y contexto.

| Rol | Acceso esperado |
|-----|-----------------|
| Profesional clínico | Consulta y registro de datos clínicos autorizados. |
| Sistema institucional | Intercambio de datos según acuerdo de interoperabilidad. |
| Autoridad sanitaria | Consulta o recepción de datos según base legal y propósito sanitario. |
| Administrador técnico | Acceso operativo sin exposición innecesaria de datos clínicos. |

---

### Trazabilidad y Auditoría

Las plataformas deben registrar eventos relevantes de acceso, creación, modificación, eliminación y transmisión de datos.

FHIR dispone del recurso `AuditEvent` para representar eventos de auditoría.

Eventos recomendados:

- Creación de recurso.
- Consulta de recurso.
- Actualización de recurso.
- Eliminación lógica o física.
- Exportación de información.
- Acceso fallido.
- Validación fallida.
- Intercambio entre instituciones.

---

### Protección de Datos Personales

- Minimizar la información transmitida.
- Evitar datos innecesarios para el caso de uso.
- Aplicar seudonimización o anonimización cuando corresponda.
- Separar datos clínicos de datos administrativos cuando sea viable.
- Definir políticas de retención y eliminación.
- Registrar consentimiento cuando aplique.

---

### Consentimiento

Cuando el caso de uso lo requiera, el consentimiento del paciente puede representarse mediante el recurso `Consent`.

La gestión de consentimiento debe considerar propósito, institución responsable, alcance, vigencia, revocación y excepciones legales o sanitarias.

---

### Clasificación de Sensibilidad

Los recursos pueden utilizar `meta.security` para indicar etiquetas de seguridad.

```json
{
  "meta": {
    "security": [
      {
        "system": "http://terminology.hl7.org/CodeSystem/v3-Confidentiality",
        "code": "N",
        "display": "normal"
      }
    ]
  }
}
```

---

### Requisitos Mínimos

Toda implementación productiva debe contar con HTTPS/TLS, autenticación fuerte, autorización basada en roles o scopes, auditoría, monitoreo, respaldo, recuperación y gestión de incidentes.
