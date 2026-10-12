Profile: CompositionDOLab
Parent: Composition
Title: "Documento Clínico Laboratorio"


* status 1..1 MS
* type 1..1 MS

* time
* subject 1..1 MS
* subject only Reference(PatientDO)

* date 1..1 MS

* author 1..* MS
* author only Reference(PractitionerDO or OrganizationDO)

* title 1..1 MS

* custodian 0..1 MS
* custodian only Reference(OrganizationDO)

//* section 0..* MS



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
    DiagnosticReport 1..1 MS and
    DocumentoPDF 1..1 MS



* section[DiagnosticReport] ^short = "Sección Informe Laboratorio"
* section[DiagnosticReport].code MS
* section[DiagnosticReport].code = $LOINC#11502-2 "Laboratory report"
* section[DiagnosticReport].title 1.. MS
* section[DocumentoPDF].entry 1.. MS
* section[DocumentoPDF].entry only Reference($canonicaDiagnosticReportDO)  


* section[DocumentoPDF] ^short = "Sección Documento PDF"
* section[DocumentoPDF].code MS 
* section[DocumentoPDF].code = $LOINC#99999-9

* section[DocumentoPDF].title 1.. MS

* section[DocumentoPDF].entry 1.. MS
* section[DocumentoPDF].entry only Reference($canonicaBinary)


