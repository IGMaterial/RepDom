Instance: PatientDOExample
InstanceOf: PatientDO
Usage: #example
Title: "Ejemplo de PatientDO"
Description: "Ejemplo de paciente DO con identificador, nombre, género y datos de contacto."

* identifier[0].system = "https://digital.msp.gob.do/fhir/sid/cedula"
* identifier[0].value = "00000000000"
* identifier[0].type.coding.system = "https://digital.msp.gob.do/fhir/conectaton/CodeSystem/CSIdentificadoresPersona"
* identifier[0].type.coding.code = #CED

* name[0].family = "Pérez"
* name[0].given[0] = "María"
* name[0].extension[0].url = "https://digital.msp.gob.do/fhir/conectaton/StructureDefinition/SegundoApellidoDO"
* name[0].extension[0].valueString = "Gómez"

* birthDate = "1990-05-15"

* gender = #female

* telecom[0].system = #phone
* telecom[0].value = "+1-809-555-6789"
* telecom[1].system = #email
* telecom[1].value = "maria.perez@example.do"

* address[0].line[0] = "Calle Principal 456"
* address[0].city = "Santo Domingo"
* address[0].state = "Distrito Nacional"
* address[0].postalCode = "10102"
* address[0].country = "DO"
