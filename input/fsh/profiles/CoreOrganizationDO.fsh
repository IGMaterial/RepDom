Profile: CoreOrganizationDO
Parent: Organization
Id: core-organization-do
Title: "Organización Core DO"
Description: "Perfil Core para establecimientos, instituciones y unidades organizacionales de salud."
* ^url = "https://digital.msp.gob.do/fhir/core/StructureDefinition/core-organization-do"
* identifier 1..* MS
* identifier.system 1..1 MS
* identifier.value 1..1 MS
* active 0..1 MS
* type 0..* MS
* type from TipoEstablecimientoDOVS (extensible)
* name 1..1 MS
* telecom 0..* MS
* address 0..* MS
* partOf 0..1 MS
