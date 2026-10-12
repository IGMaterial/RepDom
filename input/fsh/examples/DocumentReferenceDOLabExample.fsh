Instance: DocumentReferenceDOLabExample
InstanceOf: DocumentReferenceDOLab
Usage: #example
Title: "Referencia documental de laboratorio de ejemplo"
Description: "Indice del documento sintetico BundleLabDOExample. La URL example.org es ilustrativa."

* masterIdentifier.system = "https://example.org/identifiers/documentos"
* masterIdentifier.value = "LAB-2026-0001"
* status = #current
* type = $LOINC#11502-2 "Laboratory report"
* subject = Reference(PatientDOExample)
* date = "2026-08-19T10:05:00-04:00"
* author = Reference(OrganizationDOExample)
* custodian = Reference(OrganizationDOExample)
* content.attachment.contentType = #application/fhir+json
* content.attachment.language = #es
* content.attachment.url = "https://example.org/fhir/Bundle/BundleLabDOExample"
* content.attachment.title = "Documento de laboratorio sintetico"
* content.attachment.creation = "2026-08-19T10:05:00-04:00"
