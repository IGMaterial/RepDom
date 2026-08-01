Profile: CoreLocationDO
Parent: Location
Id: core-location-do
Title: "Ubicación Core DO"
Description: "Perfil Core para ubicaciones físicas de prestación de servicios."
* ^url = "https://digital.msp.gob.do/fhir/core/StructureDefinition/core-location-do"
* identifier 0..* MS
* status 0..1 MS
* name 1..1 MS
* type 0..* MS
* telecom 0..* MS
* address 0..1 MS
* managingOrganization 0..1 MS
* managingOrganization only Reference(CoreOrganizationDO)
