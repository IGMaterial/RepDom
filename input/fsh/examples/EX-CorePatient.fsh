Instance: example-core-patient-do
InstanceOf: CorePatientDO
Title: "Ejemplo Paciente Core DO"
Description: "Paciente mínimo conforme al perfil Core RD."
Usage: #example
* identifier[0].system = "https://digital.msp.gob.do/fhir/core/sid/cedula"
* identifier[0].type = TipoIdentificacionDO#CED "Cédula"
* identifier[0].value = "00100000000"
* name[0].use = #official
* name[0].family = "Pérez"
* name[0].extension[segundoApellido].valueString = "García"
* name[0].given[0] = "María"
* name[0].given[1] = "Elena"
* gender = #female
* birthDate = "1985-04-12"
* telecom[0].system = #phone
* telecom[0].value = "+1-809-000-0000"
* telecom[0].use = #mobile
* telecom[1].system = #email
* telecom[1].value = "maria.perez@example.org"
* address[0].country = "DO"
* address[0].state = "Distrito Nacional"
* address[0].city = "Santo Domingo"
* address[0].line[0] = "Dirección de ejemplo"
