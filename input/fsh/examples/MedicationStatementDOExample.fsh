Instance: MedicationStatementDOEjemplo
InstanceOf: MedicationStatementDO
Usage: #example
Title: "Ejemplo de MedicationStatementDO"
Description: "Ejemplo de historial farmacológico del paciente."

* status = #active
* effectiveDateTime = "2026-08-10"
* medicationCodeableConcept.coding.system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* medicationCodeableConcept.coding.code = #1049630
* medicationCodeableConcept.coding.display = "Amoxicillin 500 mg"
* subject = Reference(PatientDO/PatientEjemplo)
* dateAsserted = "2026-08-10"
* informationSource = Reference(PractitionerDO/PractitionerEjemplo)
* dosage[0].text = "Tomar una cápsula cada 8 horas durante 7 días."
* dosage[0].route.coding.system = "http://terminology.hl7.org/CodeSystem/route-codes"
* dosage[0].route.coding.code = #PO
* dosage[0].doseAndRate[0].doseQuantity.value = 500
* dosage[0].doseAndRate[0].doseQuantity.unit = "mg"
* dosage[0].doseAndRate[0].doseQuantity.system = "http://unitsofmeasure.org"
* dosage[0].doseAndRate[0].doseQuantity.code = #mg
* note[0].text = "Historial farmacológico de antibiótico para infección respiratoria."
