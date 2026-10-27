Instance: ConditionConclusionDOExample
InstanceOf: ConditionConclusionDO
Usage: #example
Title: "Conclusión epidemiológica de dengue"
Description: "Ejemplo sintético de conclusión epidemiológica para el caso de dengue."

* clinicalStatus = #active
* verificationStatus = #confirmed
* category[conclusion] = CSCategoriaNotificacionDO#conclusion-epidemiologica
* code = $CIE10#A90 "Dengue"
* subject = Reference(PatientDOExample)
* recordedDate = "2026-10-26"
* note.text = "Caso confirmado de dengue. Se recomienda seguimiento clínico estrecho por embarazo."
