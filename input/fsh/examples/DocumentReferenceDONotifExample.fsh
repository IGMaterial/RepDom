Instance: DocumentReferenceDONotifExample
InstanceOf: DocumentReferenceDONotif
Usage: #example
Title: "Referencia de notificación de dengue"
Description: "Metadatos del documento FHIR de notificación individual del caso sintético de dengue."

* status = #current
* date = "2026-10-26T10:00:00-04:00"
* masterIdentifier.system = "urn:ietf:rfc:3986"
* masterIdentifier.value = "urn:uuid:document-reference-notif-dengue-example"
* subject = Reference(PatientDOExample)
* custodian = Reference(OrganizationDOExample)
* content[0].attachment.contentType = #application/fhir+json
* content[0].attachment.url = "urn:uuid:bundle-notif-dengue-example"
