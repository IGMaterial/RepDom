Instance: CompositionDOLabExample
InstanceOf: CompositionDOLab
Usage: #example
Title: "Documento de laboratorio de ejemplo"
Description: "Documento sintetico con las secciones de informe de laboratorio y PDF."

* status = #final
* type = $LOINC#11502-2 "Laboratory report"
* subject = Reference(PatientDOExample)
* date = "2026-08-19T10:00:00-04:00"
* author = Reference(OrganizationDOExample)
* title = "Informe de laboratorio sintetico"
* custodian = Reference(OrganizationDOExample)
* section[DiagnosticReport].title = "Informe de laboratorio"
* section[DiagnosticReport].code = $LOINC#11502-2 "Laboratory report"
* section[DiagnosticReport].text.status = #generated
* section[DiagnosticReport].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Informe final sintetico de laboratorio. Ver DiagnosticReportDOExample.</div>"
* section[DiagnosticReport].entry = Reference(DiagnosticReportDOExample)
* section[DocumentoPDF].title = "Documento PDF"
// El codigo de esta seccion se hereda del perfil; pendiente de revision terminologica.
* section[DocumentoPDF].text.status = #generated
* section[DocumentoPDF].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Metadatos del PDF de ejemplo. El contenido binario no se incluye.</div>"
* section[DocumentoPDF].entry = Reference(BinaryDOLabExample)
