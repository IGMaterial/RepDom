Instance: example-ips-condition-do
InstanceOf: Condition
Title: "Ejemplo Condición IPS DO"
Usage: #example
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed
* code = $SCT#44054006 "Diabetes mellitus type 2"
* subject = Reference(example-ips-patient-do)
* onsetDateTime = "2020-01-15"
* recordedDate = "2026-03-30"
