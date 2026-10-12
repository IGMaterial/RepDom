Profile: DiagnosticReportDO
Parent: DiagnosticReport


* code 1..1 MS 
* code ^short = "Tipo de informe de laboratorio"
* code ^definition = "Tipo de informe de laboratorio"
* code from DiagnosticReportCodeVS

* subject 1..1 MS
* subject only Reference(PatientDO)

* presentedForm 1..1 MS
//* presentedForm only BinaryDO
* presentedForm ^short = "Documento PDF del resultado de Laboratorio"
* presentedForm ^definition = "Documento PDF del resultado de Laboratorio"