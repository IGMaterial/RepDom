// Ejemplo de Paciente Argentino - Cumple con PacienteAR
Instance: PacienteEjemploAR
InstanceOf: PacienteAR
Usage: #example
Title: "Paciente Argentino - Fernando Pérez"
Description: "Ejemplo de un paciente argentino con identificadores RENAPER y dominio."

* active = true
* identifier[DocumentoUnico].use = #official
* identifier[DocumentoUnico].system = "http://www.renaper.gob.ar/dni"
* identifier[DocumentoUnico].value = "12345678"

* identifier[IdentificadorDominio].use = #usual
* identifier[IdentificadorDominio].system = "http://federador.msal.gob.ar/dominio"
* identifier[IdentificadorDominio].value = "FEDE-12345678"

* name[NombreLegal].use = #official
* name[NombreLegal].family = "Pérez"
* name[NombreLegal].family.extension[FathersLastName].valueString = "Pérez"
* name[NombreLegal].family.extension[MothersLastName].valueString = "García"
* name[NombreLegal].given[0] = "Fernando"
* name[NombreLegal].given[1] = "Juan"

* name[NombreElegido].use = #usual
* name[NombreElegido].given = "Fer"

* gender = #male
* birthDate = "1965-03-15"
* telecom[0].system = #phone
* telecom[0].value = "+54-9-11-4567-8901"
* telecom[1].system = #email
* telecom[1].value = "fernando@example.com"

