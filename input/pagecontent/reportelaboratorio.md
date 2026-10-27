### **Introducción**

En esta página, se documenta todos los recursos involucrados para representar la reporte de laboratorio.

---

### **Perfiles**

En esta sección se describen los perfiles especpificos:


1️⃣ Perfil de **Document Reference Laboratorio**  para representar el indice de documento de Laboratorio.
[DocumentReference Laboratorio](StructureDefinition-DocumentReferenceDOLab.html).

2️⃣ Perfil de **Bundle Document Laboratorio**  para representar la información de notificación epidemiológica.
[Bundle Document Laboratorio](StructureDefinition-BundleLabDO.html).

3️⃣ Perfil de **Composition** Documento de Laborarotio: [Composition Laboratorio](StructureDefinition-CompositionDOLab.html).

4️⃣ Perfil de **DiagnosticReport** Diagnostic Report: [DiagnosticReportDO](StructureDefinition-DiagnosticReportDO.html).


---


### **Detalle de Secciones:**

En este apartado se describen las diferentes secciones incluidas en el documento **Compostion** para poder representar tanto de antecedendentes del paciente, asi como detalles de la atención:

1️⃣ Seccion que contiene todos los antecedentes de salud del paciente:

| **Entrada** | **Link** | **Descripción** |
| --- | --- | --- |
| ✅ **Reporte de Laboratorio** |  [DiagnosticReportDO](StructureDefinition-DiagnosticReportDO.html). |  Estructura que representa el reporte de laboratorio|
| ✅ **Documento PDF** | [Documento PDF](StructureDefinition-BinaryDO.html). | Representa el documento PDF del resultado de Laboratorio para poder visualizarlo |




### **Representación gráfica de la notificación**

Diagrama de recursos involucrados:

<div align="left" >
  <img  style="border: 1px solid; color: black; width: 50%; height: 50%;" src="bundle-lab-do.png" alt="Diagrama de recursos de notificación epidemiológica" /> 
</div>
