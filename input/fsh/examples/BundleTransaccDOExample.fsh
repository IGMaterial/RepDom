Instance: BundleTransaccDOExample
InstanceOf: BundleTransaccDO
Usage: #example
Title: "Ejemplo de Bundle transaccional DO"
Description: "Ejemplo de envío transaccional MHD con paciente, documento, submission set y documento clínico."

* type = #transaction
* timestamp = "2026-08-19T10:30:00Z"

* entry[Patient].fullUrl = "urn:uuid:patient-do-example"
* entry[Patient].resource = PatientDOExample
* entry[Patient].request.method = #POST
* entry[Patient].request.url = "Patient"

* entry[DocumentRefs].fullUrl = "urn:uuid:document-reference-do-example"
* entry[DocumentRefs].resource = DocumentReferenceDOExample
* entry[DocumentRefs].request.method = #POST
* entry[DocumentRefs].request.url = "DocumentReference"

* entry[SubmissionSet].fullUrl = "urn:uuid:list-do-example"
* entry[SubmissionSet].resource = ListDOExample
* entry[SubmissionSet].request.method = #POST
* entry[SubmissionSet].request.url = "List"

* entry[FhirDocuments].fullUrl = "urn:uuid:bundle-nps-do-example"
* entry[FhirDocuments].resource = BundleNPSDOExample
* entry[FhirDocuments].request.method = #POST
* entry[FhirDocuments].request.url = "Bundle"
