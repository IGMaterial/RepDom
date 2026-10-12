Instance: DiagnosticReportDOExample
InstanceOf: DiagnosticReportDO
Usage: #example
Title: "Informe de laboratorio de ejemplo"
Description: "Informe sintetico final con referencia al PDF representado por BinaryDOLabExample."

* status = #final
* code = $LOINC#11502-2 "Laboratory report"
* subject = Reference(PatientDOExample)
* effectiveDateTime = "2026-08-19T09:00:00-04:00"
* issued = "2026-08-19T10:00:00-04:00"
* performer = Reference(OrganizationDOExample)
* presentedForm.contentType = #application/pdf
* presentedForm.language = #es
* presentedForm.url = "https://example.org/fhir/Binary/BinaryDOLabExample"
* presentedForm.title = "Informe de laboratorio sintetico"
* presentedForm.creation = "2026-08-19T10:00:00-04:00"
