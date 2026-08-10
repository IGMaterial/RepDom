Instance: ConditionDOEjemplo
InstanceOf: ConditionDO
Usage: #example
Title: "Ejemplo de ConditionDO"
Description: "Ejemplo para una condición clínica del paciente."

* clinicalStatus = #active
* verificationStatus = #confirmed

* severity.coding.system = "http://snomed.info/sct"
* severity.coding.code = #6736007
* severity.coding.display = "Moderate"

* code.coding.system = "http://snomed.info/sct"
* code.coding.code = #404684003
* code.coding.display = "Clinical finding"
* subject = Reference(PatientDO/PatientEjemplo)
* onsetDateTime = "2026-08-10"
* recordedDate = "2026-08-10"
* recorder = Reference(PractitionerDO/PractitionerEjemplo)
* note[0].text = "Paciente con diagnóstico registrado en consulta."