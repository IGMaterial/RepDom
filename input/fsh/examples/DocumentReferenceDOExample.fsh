Instance: DocumentReferenceDOExample
InstanceOf: DocumentReferenceDO
Usage: #example
Title: "Ejemplo de DocumentReferenceDO"
Description: "Ejemplo de referencia al documento clínico del paciente."

* status = #current
* type = http://loinc.org#34105-7 "Summarization of episode note"
* date = "2026-08-19T10:30:00Z"
* masterIdentifier.system = "urn:ietf:rfc:3986"
* masterIdentifier.value = "urn:uuid:document-reference-do-example"
* subject = Reference(PatientDO/PatientDOExample)
* custodian = Reference(OrganizationDO/OrganizationDOExample)
* content[0].attachment.contentType = #application/fhir+json
* content[0].attachment.url = "urn:uuid:bundle-nps-do-example"
