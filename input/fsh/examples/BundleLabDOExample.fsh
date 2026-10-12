Instance: BundleLabDOExample
InstanceOf: BundleLabDO
Usage: #example
Title: "Bundle de laboratorio de ejemplo"
Description: "Documento sintetico con Composition como primera entrada, paciente, organizacion, informe y metadatos del PDF. Las URLs example.org son ilustrativas."

* type = #document
* identifier.system = "https://example.org/identifiers/documentos"
* identifier.value = "LAB-2026-0001"
* timestamp = "2026-08-19T10:05:00-04:00"
* entry[composition].fullUrl = "https://example.org/fhir/Composition/CompositionDOLabExample"
* entry[composition].resource = CompositionDOLabExample
// Iniciar las entradas abiertas en 1 para no sobrescribir el slice composition.
* entry[1].fullUrl = "https://example.org/fhir/Patient/PatientDOExample"
* entry[=].resource = PatientDOExample
* entry[+].fullUrl = "https://example.org/fhir/Organization/OrganizationDOExample"
* entry[=].resource = OrganizationDOExample
* entry[+].fullUrl = "https://example.org/fhir/DiagnosticReport/DiagnosticReportDOExample"
* entry[=].resource = DiagnosticReportDOExample
* entry[+].fullUrl = "https://example.org/fhir/Binary/BinaryDOLabExample"
* entry[=].resource = BinaryDOLabExample
