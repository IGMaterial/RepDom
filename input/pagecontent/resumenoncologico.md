### **Introducción**

Esta página describe los perfiles FHIR utilizados para representar el resumen oncológico del paciente y notificar un caso al Registro Nacional de Cáncer.

---

### **Perfiles del documento**

| **Perfil** | **Descripción** |
| --- | --- |
| [DocumentReference Resumen Oncológico](StructureDefinition-DocumentReferenceDOOnco.html) | Índice del documento oncológico. |
| [Bundle Documento Oncológico](StructureDefinition-BundleOncoDO.html) | Agrupa la composición y los recursos clínicos del caso. |
| [Composition Documento Oncológico](StructureDefinition-CompositionDOOnco.html) | Organiza la información clínica en secciones de diagnóstico, patología, estadificación y tratamientos. |

### **Perfiles clínicos oncológicos**

| **Perfil** | **Descripción** |
| --- | --- |
| [Cáncer Primario](StructureDefinition-PrimaryCancerConditionDO.html) | Diagnóstico del cáncer primario, con su código CIE-10, topografía CIE-O-3 y fecha de diagnóstico. Es la referencia central para los demás datos oncológicos. |
| [Informe de Patología](StructureDefinition-PathologyReportDO.html) | Informe anatomopatológico, con grado histológico y marcadores como receptores de estrógeno, receptores de progesterona y HER2. |
| [Resultado de Patología](StructureDefinition-PathologyResultDO.html) | Resultado estructurado de patología, por ejemplo, profundidad de Breslow o variante genómica. |
| [Estadio del Cáncer](StructureDefinition-CancerStageDO.html) | Estadio del cáncer primario, con fecha y sistema de estadificación. |
| [Grupo de Riesgo](StructureDefinition-RiskAssessmentDO.html) | Grupo de riesgo del cáncer infantil. |
| [Cirugía Oncológica](StructureDefinition-SurgicalProcedureDO.html) | Procedimiento quirúrgico realizado para tratar el cáncer primario. |
| [Curso de Radioterapia](StructureDefinition-RadiotherapyCourseDO.html) | Curso de radioterapia, con período de tratamiento y sitio irradiado. |
| [Tratamiento Farmacológico Oncológico](StructureDefinition-CancerMedicationStatementDO.html) | Tratamiento sistémico del cáncer, como quimioterapia, hormonoterapia, inmunoterapia o terapia dirigida. |
| [Tutor del Paciente](StructureDefinition-RelatedPersonTutorDO.html) | Tutor o responsable legal; se utiliza para casos de cáncer infantil. |

---

### **Detalle de secciones**

Todas las secciones requieren código, título y narrativa. La cardinalidad de la sección indica cuántas veces puede aparecer en la `Composition`; la cardinalidad de las entradas se aplica cuando la sección está presente.

| **Sección** | **Cardinalidad de sección** | **Entradas por sección** | **Perfil referenciado** |
| :--- | :--- | :--- | :--- |
| **Diagnóstico** (`Diagnostico`) | `1..1` | `1..1` | [Cáncer Primario](StructureDefinition-PrimaryCancerConditionDO.html) |
| **Patología** (`Patologia`) | `0..1` | `1..*` | [Informe de Patología](StructureDefinition-PathologyReportDO.html) |
| **Estadificación y riesgo** (`Estadificacion`) | `0..1` | `1..*` | [Estadio del Cáncer](StructureDefinition-CancerStageDO.html) o [Grupo de Riesgo](StructureDefinition-RiskAssessmentDO.html) |
| **Tratamientos** (`Tratamientos`) | `0..1` | `1..*` | [Cirugía Oncológica](StructureDefinition-SurgicalProcedureDO.html) o [Curso de Radioterapia](StructureDefinition-RadiotherapyCourseDO.html) o [Tratamiento Farmacológico Oncológico](StructureDefinition-CancerMedicationStatementDO.html) |

La sección **Documento PDF** está prevista en el diseño, pero actualmente no está activa en `CompositionDOOnco`; por tanto, no forma parte de las secciones obligatorias ni opcionales de este perfil.

El [Bundle Documento Oncológico](StructureDefinition-BundleOncoDO.html) agrupa estos recursos y puede incluir un tutor del paciente en casos de cáncer infantil.


### **Representación gráfica de la notificación**

Diagrama de recursos involucrados:

<div align="left" >
  <img  style="border: 1px solid; color: black; width: 50%; height: 50%;" src="bundle-onco-do.png" alt="Diagrama de recursos de notificación epidemiológica" /> 
</div>
