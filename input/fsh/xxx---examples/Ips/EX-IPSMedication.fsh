Instance: example-ips-medication-do
InstanceOf: Medication
Title: "Ejemplo Medicamento IPS DO"
Usage: #example
* code = http://www.whocc.no/atc#A10BA02 "Metformin"
* form = $SCT#385055001 "Tablet dose form"

Instance: example-ips-medicationstatement-do
InstanceOf: MedicationStatement
Title: "Ejemplo Historial Farmacológico IPS DO"
Usage: #example
* status = #active
* medicationReference = Reference(example-ips-medication-do)
* subject = Reference(example-ips-patient-do)
* effectivePeriod.start = "2024-01-01"
* dosage[0].text = "Tomar 500 mg por vía oral cada 12 horas."
* dosage[0].route = $SCT#26643006 "Oral route"
