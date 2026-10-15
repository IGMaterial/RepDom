Instance: BundleOncoDOExample
InstanceOf: BundleOncoDO
Usage: #example
Title: "Bundle oncológico de ejemplo"
Description: "Documento sintético del caso con Composition como primera entrada y todo el contenido clínico anclado al cáncer primario. Las URLs example.org son ilustrativas."

* type = #document
* identifier.system = "https://example.org/identifiers/documentos"
* identifier.value = "ONCO-2026-0001"
* timestamp = "2026-09-15T10:05:00-04:00"
* entry[composition].fullUrl = "https://example.org/fhir/Composition/CompositionDOOncoExample"
* entry[composition].resource = CompositionDOOncoExample
// Iniciar las entradas abiertas en 1 para no sobrescribir el slice composition.
* entry[1].fullUrl = "https://example.org/fhir/Patient/PatientDOExample"
* entry[=].resource = PatientDOExample
* entry[+].fullUrl = "https://example.org/fhir/Organization/OrganizationDOExample"
* entry[=].resource = OrganizationDOExample
* entry[+].fullUrl = "https://example.org/fhir/Condition/PrimaryCancerConditionDOExample"
* entry[=].resource = PrimaryCancerConditionDOExample
* entry[+].fullUrl = "https://example.org/fhir/DiagnosticReport/PathologyReportDOExample"
* entry[=].resource = PathologyReportDOExample
* entry[+].fullUrl = "https://example.org/fhir/Observation/PathologyResultDOExample"
* entry[=].resource = PathologyResultDOExample
* entry[+].fullUrl = "https://example.org/fhir/Observation/CancerStageDOExample"
* entry[=].resource = CancerStageDOExample
* entry[+].fullUrl = "https://example.org/fhir/Procedure/SurgicalProcedureDOExample"
* entry[=].resource = SurgicalProcedureDOExample
* entry[+].fullUrl = "https://example.org/fhir/MedicationStatement/CancerMedicationStatementDOExample"
* entry[=].resource = CancerMedicationStatementDOExample
