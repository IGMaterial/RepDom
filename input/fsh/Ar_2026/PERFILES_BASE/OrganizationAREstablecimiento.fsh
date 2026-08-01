Profile: OrganizationAREstablecimiento
Parent: OrganizationUvIps
// Title: "Organization - Establecimiento Salud Argentino"
// Description: "Perfil de Registro de Organizacion CORE AR (REFES)"

* identifier ..1 MS
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains REFESid 1..1 MS
* identifier[REFESid].use = #usual (exactly)
* identifier[REFESid].system 1..
* identifier[REFESid].system = "http://refes.msal.gob.ar"
* identifier[REFESid].value 1.. MS
* identifier[REFESid].period.start 1..
* telecom ..1 MS
* address MS