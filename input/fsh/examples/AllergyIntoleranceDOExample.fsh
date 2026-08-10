Instance: AllergyIntoleranceDOExample
InstanceOf: AllergyIntoleranceDO
Usage: #example
Title: "Ejemplo de AllergyIntoleranceDO"
Description: "Ejemplo de alergia o intolerancia para el perfil AllergyIntoleranceDO."

* clinicalStatus = #active
* verificationStatus = #confirmed
* type = #allergy
* category[0] = #food
* criticality = #high
* code.coding[0].system = "http://snomed.info/sct"
* code.coding[0].code = #3145006
* code.coding[0].display = "Penicillic acid"
* patient = Reference(PatientDO/PatientDOExample)
* onsetDateTime = "2026-08-10"
* recordedDate = "2026-08-10"
* recorder = Reference(PractitionerDO/PractitionerDOExample)
