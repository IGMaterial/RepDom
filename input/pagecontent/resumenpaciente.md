
## Resumen de Paciente



### **Introducción**

En esta página, se documenta todos los recursos involucrados para representar la información de resumen de paciente, incluyendo antecedentes, medicación y alergias.

---

### **Perfiles**

En esta sección se describen los perfiles especpificos realizados para este contexto de atención.


1️⃣ Perfil de **Bundle Document**  para representar la información de resumen de paciente, incluyendo antecedentes, medicación y alergias:
[Bundle Document NPS](StructureDefinition-BundleNPSDO.html).

2️⃣ Perfil de **Composition** Documento de NPS:  
[Composition NPS](StructureDefinition-CompositionDO.html).

---


### **Detalle de Secciones:**


En este apartado se describen las diferentes secciones incluidas en el documento **Compostion** para poder representar tanto de antecedendentes del paciente, asi como detalles de la atención:

1️⃣ Seccion que contiene todos los antecedentes de salud del paciente:

| **Entrada** | **Link** | **Descripción** |
| --- | --- | --- |
| ✅ **Diagnósiticos** | [Condition DO](StructureDefinition-ConditionDO.html) | Representa los antecedentedes diagnósticos del paciente. |
| ✅ **Medicación Actual** | [Medication Statement](StructureDefinition-MedicationStatementDO.html). | Representa la información de la medicación actual que toma el paciente. |
| ✅ **Alergias e Intolerancias Conocidas** | [Alergias](StructureDefinition-AlergiaDO.html). | Representa las alergias que tiene el paciente. |
