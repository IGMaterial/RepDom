Instance: CancerMedicationStatementDOExample
InstanceOf: CancerMedicationStatementDO
Usage: #example
Title: "Tratamiento farmacológico de ejemplo"
Description: "Hormonoterapia con tamoxifeno. Caso sintético."

* status = #active
* medicationCodeableConcept = $ATC#L02BA01 "tamoxifen"
* subject = Reference(PatientDOExample)
* effectivePeriod.start = "2026-09-01"
* dateAsserted = "2026-09-15"
* informationSource = Reference(OrganizationDOExample)
* reasonReference = Reference(PrimaryCancerConditionDOExample)
* dosage[0].text = "20 mg vía oral una vez al día."
