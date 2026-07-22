Profile: CorePatientDO
Parent: Patient
Id: core-patient-do
Title: "Paciente Core DO"
Description: "Perfil Core para representar pacientes."
* ^url = "https://digital.msp.gob.do/fhir/core/StructureDefinition/core-patient-do"
* identifier 1..* MS
* identifier.system 1..1 MS
* identifier.value 1..1 MS
* identifier.type 0..1 MS
* identifier.type from TipoIdentificacionDOVS (extensible)
* name 1..* MS
* name.given 1..* MS
* name.family 1..1 MS
* name.extension contains SegundoApellidoDO named segundoApellido 0..1 MS
* gender 0..1 MS
* birthDate 0..1 MS
* telecom 0..* MS
* address 0..* MS
* address.country 0..1 MS
* address.state 0..1 MS
* address.city 0..1 MS
