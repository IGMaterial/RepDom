Instance: ListDOExample
InstanceOf: ListDO
Usage: #example
Title: "Ejemplo de ListDO"
Description: "Ejemplo de conjunto de documentos enviados para un paciente."

* status = #current
* mode = #working
* date = "2026-08-19T10:30:00Z"
* subject = Reference(PatientDO/PatientDOExample)
* entry[0].item = Reference(DocumentReferenceDO/DocumentReferenceDOExample)
* extension.url = "https://profiles.ihe.net/ITI/MHD/StructureDefinition/ihe-sourceId"
* extension.valueIdentifier.value = "urn:oid:1.2.3.4"