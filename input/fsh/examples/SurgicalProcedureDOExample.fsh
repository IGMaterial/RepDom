Instance: SurgicalProcedureDOExample
InstanceOf: SurgicalProcedureDO
Usage: #example
Title: "Cirugía oncológica de ejemplo"
Description: "Mastectomía parcial izquierda. Caso sintético."

* status = #completed
* category = $SCT#387713003 "Surgical procedure"
* code = $SCT#64368001 "Partial mastectomy"
* subject = Reference(PatientDOExample)
* performedDateTime = "2026-08-05"
* performer.actor = Reference(OrganizationDOExample)
* reasonReference = Reference(PrimaryCancerConditionDOExample)
