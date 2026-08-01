Instance: example-core-organization-do
InstanceOf: CoreOrganizationDO
Title: "Ejemplo Organización Core DO"
Description: "Establecimiento de salud de ejemplo."
Usage: #example
* identifier[0].system = "https://digital.msp.gob.do/fhir/core/sid/codigo-habilitacion"
* identifier[0].value = "A010010001"
* active = true
* type[0] = TipoEstablecimientoDO#HOSP "Hospital"
* name = "Hospital de Ejemplo"
* telecom[0].system = #phone
* telecom[0].value = "+1-809-555-0100"
* address[0].country = "DO"
* address[0].state = "Distrito Nacional"
* address[0].city = "Santo Domingo"
