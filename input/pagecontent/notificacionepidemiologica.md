### **Introducción**

Esta página describe los perfiles FHIR para la notificación individual de un caso epidemiológico. El evento o enfermedad principal se registra en `ConditionCasoEpidemiologicoDO`; la composición organiza los hallazgos, antecedentes, informes de laboratorio y la conclusión del caso.



### **Perfiles del documento**

| **Perfil** | **Descripción** |
| --- | --- |
| [DocumentReference Notificación Individual de Caso](StructureDefinition-DocumentReferenceDONotif.html) | Índice del documento de notificación. |
| [Bundle Notificación Individual de Caso](StructureDefinition-BundleNotifDO.html) | Documento de tipo `document` que agrupa la composición y los recursos del caso. Exige identificador con sistema y valor, y fecha y hora de ensamblado (`timestamp`). |
| [Composition Notificación Individual de Caso](StructureDefinition-CompositionDONotif.html) | Organiza las secciones y referencia al paciente, los autores y, cuando corresponde, la organización custodio. |

La primera entrada del Bundle debe ser la Composition. El Bundle exige una composición, un [paciente](StructureDefinition-PatientDO.html), una [organización](StructureDefinition-OrganizationDO.html) y un caso epidemiológico, y admite entradas adicionales. Los recursos referenciados por la Composition deben incluirse en el documento, incluidos los autores, que pueden ser [profesionales](StructureDefinition-PractitionerDO.html) u organizaciones.

### **Perfiles clínicos de notificación**

| **Perfil** | **Descripción** |
| --- | --- |
| [Caso Epidemiológico DO](StructureDefinition-ConditionCasoEpidemiologicoDO.html) | Evento o enfermedad principal. Requiere estado clínico, estado de verificación, categoría de evento epidemiológico, código, paciente y fecha de registro. La fecha de inicio es opcional y se expresa como `onsetDateTime`. |
| [Signo o Síntoma DO](StructureDefinition-ObservationSignoSintomaDO.html) | Hallazgo clínico estructurado, con código, paciente y fecha o período de evaluación. Permite registrar un valor, motivo de ausencia de datos y notas. |
| [Estado de Embarazo DO](StructureDefinition-ObservationEstadoEmbarazoDO.html) | Estado de embarazo identificado con LOINC `82810-3` (Pregnancy status), con paciente y fecha o período de evaluación. Cuando se informa un valor, se utiliza `valueCodeableConcept`. |
| [Viajes y Exposición DO](StructureDefinition-ObservationViajesExposicionDO.html) | Antecedente de viaje o exposición relevante, con código, paciente y fecha o período de evaluación. Permite registrar un valor y notas. |
| [Conclusión Epidemiológica DO](StructureDefinition-ConditionConclusionDO.html) | Conclusión o clasificación final en `code`, con estado de confirmación en `verificationStatus`. Requiere estado clínico, categoría de conclusión epidemiológica, paciente y fecha de registro. |
| [Informe de Laboratorio DO](StructureDefinition-DiagnosticReportDO.html) | Perfil reutilizado para informes de laboratorio. Actualmente requiere el documento adjunto en `presentedForm`. |

El caso puede enlazar observaciones e informes de laboratorio mediante `evidence.detail`. La conclusión se registra como una condición separada, asociada al mismo paciente y organizada en su propia sección del documento; no se exige que el caso esté confirmado ni resuelto.

---

### **Detalle de secciones**

Todas las secciones requieren código, título y narrativa. La cardinalidad de la sección indica cuántas veces puede aparecer en la Composition; la cardinalidad de las entradas se aplica cuando la sección está presente.

| **Sección** | **Cardinalidad de sección** | **Entradas por sección** | **Perfil referenciado** |
| --- | --- | --- | --- |
| **Datos de la enfermedad** (`DatosEnfermedad`) | `1..1` | `1..1` | [Caso Epidemiológico DO](StructureDefinition-ConditionCasoEpidemiologicoDO.html) |
| **Observaciones** (`Observaciones`) | `0..1` | `1..*` | [Signo o Síntoma DO](StructureDefinition-ObservationSignoSintomaDO.html) o  [Estado de Embarazo DO](StructureDefinition-ObservationEstadoEmbarazoDO.html) o  [Viajes y Exposición DO](StructureDefinition-ObservationViajesExposicionDO.html) |
| **Laboratorio** (`Laboratorio`) | `0..1` | `1..*` | [Informe de Laboratorio DO](StructureDefinition-DiagnosticReportDO.html) |
| **Conclusión** (`Conclusion`) | `0..1` | `1..1` | [Conclusión Epidemiológica DO](StructureDefinition-ConditionConclusionDO.html) |
| **Documento PDF** (`DocumentoPDF`) | `0..1` | `1..1` | [Binary DO](StructureDefinition-BinaryDO.html) |

La composición permite secciones adicionales mediante slicing abierto. Estas pueden contener código, título y narrativa sin entradas clínicas estructuradas. La vacunación queda prevista para una ampliación futura.

### **Terminología**

Las secciones se distinguen mediante [CSSeccionesNotificacionDO](CodeSystem-CSSeccionesNotificacionDO.html). Las categorías de evento y conclusión se definen en [CSCategoriaNotificacionDO](CodeSystem-CSCategoriaNotificacionDO.html). Ambos sistemas de códigos son propuestas locales en estado borrador y experimental, pendientes de revisión nacional.

Los perfiles nuevos no establecen catálogos nacionales específicos para eventos, signos, exposiciones o conclusiones. Las restricciones heredadas pueden consultarse en la página de cada perfil.

### **Formulario de notificación**

El [Formulario Único de Notificación de Caso](FormularioNotifCaso.pdf) está disponible para descarga. Para incorporarlo en la sección **Documento PDF**, se referencia un recurso [Binary DO](StructureDefinition-BinaryDO.html) con `contentType = application/pdf`.

### **Representación gráfica de la notificación**

Diagrama de recursos involucrados:

<div align="left" >
  <img  style="border: 1px solid; color: black; width: 50%; height: 50%;" src="bundle-notif-do.png" alt="Diagrama de recursos de notificación epidemiológica" /> 
</div>
