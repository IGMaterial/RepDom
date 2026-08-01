Instance: example-core-practitioner-do
InstanceOf: CorePractitionerDO
Title: "Ejemplo Profesional Core DO"
Description: "Profesional de salud de ejemplo."
Usage: #example
* identifier[0].system = "https://digital.msp.gob.do/fhir/core/sid/exequatur"
* identifier[0].value = "417-25"
* name[0].use = #official
* name[0].family = "Rodríguez"
* name[0].given[0] = "Ana"
* telecom[0].system = #email
* telecom[0].value = "ana.rodriguez@example.org"
