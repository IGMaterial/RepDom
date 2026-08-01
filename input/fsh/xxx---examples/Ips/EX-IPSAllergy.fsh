Instance: example-ips-allergy-do
InstanceOf: AllergyIntolerance
Title: "Ejemplo Alergia IPS DO"
Usage: #example
* clinicalStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical#active
* verificationStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-verification#confirmed
* type = #allergy
* category[0] = #medication
* criticality = #high
* code = $SCT#91936005 "Allergy to penicillin"
* patient = Reference(example-ips-patient-do)
* reaction[0].manifestation[0] = $SCT#247472004 "Hives"
* reaction[0].severity = #moderate
