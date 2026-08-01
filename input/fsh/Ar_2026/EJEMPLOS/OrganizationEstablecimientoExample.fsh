// Ejemplo de Establecimiento de Salud Argentino - Cumple con OrganizationAREstablecimiento
Instance: HospitalJoaquinCorvalanExample
InstanceOf: OrganizationAREstablecimiento
Usage: #example
Title: "Hospital Joaquín Corvalan - Establecimiento"
Description: "Ejemplo de un establecimiento de salud registrado en REFES."

* identifier[REFESid].use = #usual
* identifier[REFESid].system = "http://refes.msal.gob.ar"
* identifier[REFESid].value = "300000000000"
* identifier[REFESid].period.start = "2010-05-20"
* identifier[REFESid].period.end = "2030-12-31"

* active = true
//* type[0] = $organization-type#prov "Healthcare Provider"
* name = "Hospital Joaquín Corvalan"
* alias[0] = "Hospital Córdoba"
* alias[1] = "HJC"

* telecom[0].system = #phone
* telecom[0].value = "+54-351-4234567"
* telecom[0].use = #work

* address.use = #work
* address.type = #physical
* address.city = "Córdoba"
* address.state = "Córdoba"
* address.postalCode = "5000"
* address.country = "AR"

//* contact[0].purpose = $contactentity-type#ADMIN "Administrative"
* contact[0].name.use = #official
* contact[0].name.given = "María"
* contact[0].name.family = "Fernández"
* contact[0].telecom[0].system = #phone
* contact[0].telecom[0].value = "+54-351-4234568"
* contact[0].telecom[1].system = #email
* contact[0].telecom[1].value = "admin@hospitalcordoba.gov.ar"

* partOf.reference = "Organization/DominioSaludCordovaExample"
