Instance: PractitionerDOExample
InstanceOf: PractitionerDO
Usage: #example
Title: "Ejemplo de PractitionerDO"
Description: "Ejemplo de profesional de salud para el perfil PractitionerDO."

//* identifier[0].system = "https://digital.msp.gob.do/identifiers/practitioner"
* identifier[0].value = "PROF-0001"
* identifier[0].type.coding.system = "https://digital.msp.gob.do/fhir/conectaton/CodeSystem/CSIdentificadoresPersona"
* identifier[0].type.coding.code = #PRN

* name[0].family = "Rodríguez"
* name[0].given[0] = "Laura"
* name[0].extension[0].url = "http://digital.msp.gob.do/fhir/StructureDefinition/SegundoApellidoDO"
* name[0].extension[0].valueString = "Martínez"

* telecom[0].system = #phone
* telecom[0].value = "+1-809-555-9012"
* telecom[1].system = #email
* telecom[1].value = "laura.rodriguez@example.do"
* address[0].line[0] = "Calle Salud 789"
* address[0].city = "Santiago"
* address[0].state = "Santiago"
* address[0].postalCode = "51000"
* address[0].country = "DO"


* qualification[0].code.coding.system = "https://digital.msp.gob.do/fhir/conectaton/CodeSystem/CSEspecialidadesMedicas"
* qualification[0].code.coding.code = #MG
* qualification[0].code.coding.display = "Medicina general"
