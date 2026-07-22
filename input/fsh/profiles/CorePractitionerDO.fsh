Profile: CorePractitionerDO
Parent: Practitioner
Id: core-practitioner-do
Title: "Profesional Core DO"
Description: "Perfil Core para profesionales de salud."
* ^url = "https://digital.msp.gob.do/fhir/core/StructureDefinition/core-practitioner-do"
* identifier 1..* MS
* identifier.system 1..1 MS
* identifier.value 1..1 MS
* identifier.type 0..1 MS
* identifier.type from TipoIdentificacionDOVS (extensible)
* name 1..* MS
* name.given 1..* MS
* name.family 1..1 MS
* name.extension contains SegundoApellidoDO named segundoApellido 0..1 MS
* telecom 0..* MS
* address 0..* MS
* qualification 0..* MS
* qualification.identifier 0..* MS
* qualification.code 1..1 MS
