### **Introducción**

En esta página, se documenta todos los recursos involucrados para representar la información de resumen de paciente, incluyendo antecedentes, medicación y alergias.

---

### **Perfiles**

En esta sección se describen los perfiles especpificos realizados para este contexto de atención.


1️⃣ Perfil de **Document Reference Notificación Caso**  para representar el indice de documento de notificación. 
[DocumentReference Notificación Caso](StructureDefinition-DocumentReferenceDONotif.html).

2️⃣ Perfil de **Bundle Document Notificación Caso**  para representar la información de notificación epidemiológica.
[Bundle Document Notificación Caso](StructureDefinition-BundleNotifDO.html).

3️⃣ Perfil de **Composition** Documento de Notiticación Epidemiológica: [Composition Notificación Epidemiológica](StructureDefinition-CompositionDONotif.html).

---


### **Detalle de Secciones:**


En este apartado se describen las diferentes secciones incluidas en el documento **Compostion** para poder representar tanto de antecedendentes del paciente, asi como detalles de la atención:

1️⃣ Seccion que contiene todos los antecedentes de salud del paciente:

| **Entrada** | **Link** | **Descripción** |
| --- | --- | --- |
| ✅ **Signos y Sintomas** | [Condition DO](StructureDefinition-ConditionDO.html) | Representa los signos y síntomas encontrados en el paciente. |
| ✅ **Documento PDF** | [Documento PDF](StructureDefinition-BinaryDO.html). | Representa el documento PDF asociado, con el detalle de la notificación caso. |


### **Estructura de Documento a incluir**


Aqui se puede descargar el documento PDF a incluir de Formulario Único de Notificación de Caso: [Documento PDF](FormularioNotifCaso.pdf).