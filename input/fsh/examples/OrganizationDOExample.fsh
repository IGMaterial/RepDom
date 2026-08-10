Instance: OrganizationDOExample
InstanceOf: OrganizationDO
Usage: #example
Title: "Ejemplo de OrganizationDO"
Description: "Ejemplo de organización sanitaria para el perfil OrganizationDO."

* identifier[0].system = "https://digital.msp.gob.do/identifiers/organization"
* identifier[0].value = "ORG-001"
* active = true
* type[0].coding.system = "http://terminology.hl7.org/CodeSystem/organization-type"
* type[0].coding.code = #prov
* type[0].coding.display = "Healthcare Provider"
* name = "Centro de Salud DO Ejemplo"
* telecom[0].system = #phone
* telecom[0].value = "+1-809-555-1234"
* telecom[1].system = #email
* telecom[1].value = "contacto@centrosaluddo.do"
* address[0].line[0] = "Av. Principal 123"
* address[0].city = "Santo Domingo"
* address[0].state = "Distrito Nacional"
* address[0].postalCode = "10101"
* address[0].country = "DO"
