Instance: example-ips-organization-do
InstanceOf: $CoreOrganizacionDO
Title: "Ejemplo Organización IPS RD"
Usage: #example
* identifier[0].system = "https://digital.msp.gob.do/fhir/core/sid/habilitacion"
* identifier[0].value = "HAB-0001"
* active = true
* name = "Hospital de Ejemplo"

Instance: example-ips-practitioner-do
InstanceOf: $CorePrestadorDO
Title: "Ejemplo Profesional IPS RD"
Usage: #example
* identifier[0].system = "https://digital.msp.gob.do/fhir/core/sid/exequatur"
* identifier[0].value = "467-45"
* name[0].family = "Rodríguez"
* name[0].given[0] = "Ana"
