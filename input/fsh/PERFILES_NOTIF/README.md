# Notificación individual: propuesta inicial

Se conservan los nombres existentes `CompositionDONotif` y `BundleNotifDO` del diagrama, en lugar de crear duplicados con los nombres largos del texto adjunto.

- `ConditionCasoEpidemiologicoDO`: evento principal obligatorio, con estado clínico, verificación, categoría, código y fecha de registro obligatorios.
- `ConditionConclusionDO`: conclusión opcional y separada del evento. No se fija `verificationStatus` a confirmado ni se obliga a que el estado clínico sea resuelto.
- `ObservationSignoSintomaDO`, `ObservationEstadoEmbarazoDO` y `ObservationViajesExposicionDO`: paciente y momento de evaluación obligatorios. El embarazo utiliza LOINC 82810-3 y valor CodeableConcept.
- Laboratorio reutiliza `DiagnosticReportDO`, que actualmente exige `presentedForm`; la unificación con oncología queda pendiente.
- Las secciones estructuradas opcionales exigen entradas cuando están presentes. Otras secciones pueden contener solo título, código y narrativa, gracias al slicing abierto.
- El PDF reutiliza `BinaryDO`. El emisor debe utilizar `contentType = application/pdf` para esta sección.
- El Bundle hereda de `BundleDocDO` un paciente y una organización obligatorios. Debe incluir los recursos referenciados por la Composition, incluidos los autores. Las entradas adicionales están permitidas.

Las cardinalidades no detalladas en el material son decisiones iniciales de modelado. Los códigos locales de secciones y categorías son experimentales y requieren revisión nacional. No se han inventado catálogos de enfermedades, signos, exposiciones ni conclusiones. La vacunación queda para una ampliación futura, como indica el material adjunto.

Las flechas clínicas punteadas del diagrama no se convierten automáticamente en referencias obligatorias. `ConditionCasoEpidemiologicoDO.evidence.detail` permite enlazar las observaciones y los informes; la asociación con la conclusión se establece mediante las secciones del documento y el paciente común.

Compilación: `sushi build RepDom -o .validation-notif` desde la raíz del espacio de trabajo. La compilación SUSHI no sustituye la validación de instancias con el validador FHIR/IG Publisher, ni verifica por sí sola que todas las referencias estén resueltas dentro del documento.
