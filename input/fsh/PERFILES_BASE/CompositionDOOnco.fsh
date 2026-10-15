Profile: CompositionDOOnco
Parent: CompositionDO
Title: "Documento Clínico Oncologico"
Description: "Documento del caso para el Registro Nacional de Cáncer. Todo el contenido clínico se ancla al cáncer primario (PrimaryCancerConditionDO)."

// El autor es el establecimiento que notifica (fuente del caso)
* author only Reference(OrganizationDO)
* author ^short = "Establecimiento que notifica (fuente del caso)"

//----- division de secciones -------
* section ^slicing.discriminator[0].type = #pattern
* section ^slicing.discriminator[=].path = "code"
* section ^slicing.ordered = false
* section ^slicing.rules = #open

* section ^short = "Sección del documento"
* section ^definition = "Sección de notificación de datos clínicos."

* section.code 1.. MS
* section.code from http://hl7.org/fhir/ValueSet/doc-section-codes (example)


* section contains
    Diagnostico 1..1 MS and
    Patologia 0..1 MS and
    Estadificacion 0..1 MS and
    Tratamientos 0..1 MS and
    DocumentoPDF 0..1 MS


//------ Diagnóstico: cáncer primario ------------
* section[Diagnostico] ^short = "Sección Diagnóstico"
* section[Diagnostico].code MS
* section[Diagnostico].code = CSSeccionesOncoDO#diagnostico
* section[Diagnostico].title 1.. MS
* section[Diagnostico].entry 1..1 MS
* section[Diagnostico].entry only Reference(PrimaryCancerConditionDO)


//------ Patología ------------
* section[Patologia] ^short = "Sección Patología"
* section[Patologia].code MS
* section[Patologia].code = $LOINC#30954-2 "Relevant diagnostic tests/laboratory data Narrative"
* section[Patologia].title 1.. MS
* section[Patologia].entry 1.. MS
* section[Patologia].entry only Reference(PathologyReportDO)


//------ Estadificación y riesgo ------------
* section[Estadificacion] ^short = "Sección Estadificación y riesgo"
* section[Estadificacion].code MS
* section[Estadificacion].code = CSSeccionesOncoDO#estadificacion
* section[Estadificacion].title 1.. MS
* section[Estadificacion].entry 1.. MS
* section[Estadificacion].entry only Reference(CancerStageDO or RiskAssessmentDO)


//------ Tratamientos ------------
* section[Tratamientos] ^short = "Sección Tratamientos"
* section[Tratamientos].code MS
* section[Tratamientos].code = $LOINC#47519-4 "History of Procedures Document"
* section[Tratamientos].title 1.. MS
* section[Tratamientos].entry 1.. MS
* section[Tratamientos].entry only Reference(SurgicalProcedureDO or RadiotherapyCourseDO or CancerMedicationStatementDO)


//------ Documento PDF ------------
* section[DocumentoPDF] ^short = "Sección Documento PDF"

* section[DocumentoPDF].code MS 
* section[DocumentoPDF].code = $LOINC#99999-9

* section[DocumentoPDF].title 1.. MS

* section[DocumentoPDF].entry 1.. MS
* section[DocumentoPDF].entry only Reference($canonicaBinary)
