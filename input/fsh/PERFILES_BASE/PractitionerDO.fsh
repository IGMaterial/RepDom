Profile: PractitionerDO
Parent: Practitioner-uv-ips
//Id: practitioner-do
Title: "Profesional DO"
Description: "Perfil para profesionales de salud."

* identifier 1..* MS
//* identifier.system 1..1 MS
* identifier.value 1..1 MS
* identifier.type 0..1 MS
* identifier.type from VSTipoIdentifProfDO (required)

* name 1..* MS
* name.given 1..* MS
* name.family 1..1 MS
* name.extension contains SegundoApellidoDO named segundoApellido 0..1 MS

* telecom 0..* MS
* address 0..* MS

* qualification 0..* MS
* qualification.identifier 0..* MS
//* qualification.code 0..1 MS
* qualification.code from VSEspecialidadDO (required)


//* ^url = "https://digital.msp.gob.do/fhir/core/StructureDefinition/core-practitioner-do"