Instance: example-ips-patient-do
InstanceOf: $CorePacienteDO
Title: "Ejemplo Paciente IPS RD"
Description: "Paciente mínimo para IPS RD."
Usage: #example
* identifier[0].system = "https://digital.msp.gob.do/fhir/core/sid/cedula"
* identifier[0].value = "00100000000"
* name[0].use = #official
* name[0].family = "Pérez"
* name[0].given[0] = "María"
* name[0].given[1] = "Elena"
* gender = #female
* birthDate = "1985-04-12"
