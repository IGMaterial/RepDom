Profile: CorePractitionerRoleDO
Parent: PractitionerRole
Id: core-practitionerrole-do
Title: "Rol Profesional Core DO"
Description: "Perfil Core para relacionar profesional, organización, rol y especialidad."
* ^url = "https://digital.msp.gob.do/fhir/core/StructureDefinition/core-practitionerrole-do"
* practitioner 1..1 MS
* practitioner only Reference(CorePractitionerDO)
* organization 0..1 MS
* organization only Reference(CoreOrganizationDO)
* code 0..* MS
* specialty 0..* MS
* specialty from EspecialidadDOVS (extensible)
* telecom 0..* MS
* availableTime 0..* MS
