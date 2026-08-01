// Ejemplo de Profesional Argentino - Cumple con PractitionerAR
Instance: ProfesionalTubauExample
InstanceOf: PractitionerAR
Usage: #example
Title: "Profesional de Salud Argentino - Dr. Tubau"
Description: "Ejemplo de un profesional registrado en REFEPS y RENAPER."

* identifier[DocumentoUnico].use = #official
* identifier[DocumentoUnico].type = $v2-0203#NI
* identifier[DocumentoUnico].system = "http://www.renaper.gob.ar/dni"
* identifier[DocumentoUnico].value = "15987654"
* identifier[DocumentoUnico].assigner.display = "RENAPER"

* identifier[REFEPSid].use = #usual
* identifier[REFEPSid].type = $v2-0203#AC
* identifier[REFEPSid].system = "http://refeps.msal.gob.ar"
* identifier[REFEPSid].value = "123456789012"
* identifier[REFEPSid].period.start = "2018-01-15"

* active = true
* name.use = #official
* name.family = "Tubau"
* name.family.extension[FathersLastName].valueString = "Tubau"
* name.family.extension[MothersLastName].valueString = "Cepeda"
* name.given[0] = "Roberto"
* name.given[1] = "Carlos"

* gender = #male
* birthDate = "1972-07-22"

* telecom[0].system = #phone
* telecom[0].value = "+54-11-5678-9012"
* telecom[1].system = #email
* telecom[1].value = "tubau@example.com"

* address.use = #work
* address.city = "Buenos Aires"
* address.state = "CABA"
* address.postalCode = "1428"
* address.country = "AR"

//* qualification[0].code = $snomed#309343006 "Médico General"
* qualification[0].code.text = "Médico Clínico"
* qualification[0].period.start = "1996-06-30"

//* qualification[1].code = $snomed#408947004 "Especialista en Medicina Interna"
* qualification[1].code.text = "Especialista en Medicina Interna"
* qualification[1].period.start = "2005-12-15"
