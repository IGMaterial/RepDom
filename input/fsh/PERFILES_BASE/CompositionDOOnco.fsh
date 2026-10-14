Profile: CompositionDOOnco
Parent: CompositionDO
Title: "Documento Clínico Oncologico"

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
    DocumentoPDF 0..1 MS

  
* section[DocumentoPDF] ^short = "Sección Documento PDF"

* section[DocumentoPDF].code MS 
* section[DocumentoPDF].code = $LOINC#99999-9

* section[DocumentoPDF].title 1.. MS

* section[DocumentoPDF].entry 1.. MS
* section[DocumentoPDF].entry only Reference($canonicaBinary)


