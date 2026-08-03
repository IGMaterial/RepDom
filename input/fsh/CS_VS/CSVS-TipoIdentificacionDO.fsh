CodeSystem: CSTipoIdentificacionDO
Id: CSTipoIdentificacionDO
Title: "Tipo de Identificación DO"
Description: "Tipos de documentos de identificación usados en República Dominicana o por la implementación nacional."
* ^url = "https://digital.msp.gob.do/fhir/core/CodeSystem/tipo-identificacion-do"
* ^caseSensitive = true
* ^content = #complete
* #CED "Cédula" "Cédula de identidad y electoral."
* #PAS "Pasaporte" "Pasaporte."
* #NSS "Número de Seguridad Social" "Número de seguridad social."
* #RN "Registro Nacional" "Identificador nacional o institucional."
* #MR "Record médico" "Número de expediente o record médico."
* #EX "Exequátur" "Exequátur de profesional de la salud."


ValueSet: VSTipoIdentifPacDO
Id: VSTipoIdentifPacDO
Title: "Identificadores de Paciente"
Description:  "Conjunto de valores para los Identificadores de Paciente."
* ^experimental = false
//* ^version = "1.0.0"
* ^status = #active

* $CSIdentificadoresPersona#CED "Cédula de Identidad" 
* $CSIdentificadoresPersona#PAS "Pasaporte"
* $CSIdentificadoresPersona#NSS "Número de Seguridad Social" 
* $CSIdentificadoresPersona#RN "Registro Nacional" 
* $CSIdentificadoresPersona#MR "Record médico"

ValueSet: VSTipoIdentifProfDO
Id: VSTipoIdentifProfDO
Title: "Identificadores de Profesional"
Description:  "Conjunto de valores para los Identificadores de Profesional."
* ^experimental = false
//* ^version = "1.0.0"
* ^status = #active

* $CSIdentificadoresPersona#EX "Exequátur"
/*

CodeSystem: IdentificadoresPersonaCS
Id: IdentificadoresPersonaCS
Title: "Identificadores de Persona"
Description: "Conjunto de códigos para identificar a una persona."
* ^name = "IdentificadoresPersonaCS"
* ^experimental = false
* ^caseSensitive = true
* #01   "Cédula de Identidad" "Cédula de Identidad"
* #02   "Cédula Extranjera" "Cédula Extranjera"
* #03   "Pasaporte" "Pasaporte"



ValueSet: IdentificadoresPersonaVS
Id: IdentificadoresPersonaVS
Title: "Identificadores de Persona"
Description:  "Conjunto de valores para los Identificadores de Persona."
* ^experimental = false
* ^version = "1.0.0"
* ^status = #active

* include codes from system IdentificadoresPersonaCS

ValueSet: IdentificadoresProfesionalVS
Title: "Identificadores de Profesional"
Description:  "Conjunto de valores para los Identificadores de Profesional."
* ^experimental = false
* ^version = "1.0.0"
* ^status = #active

* $CSIdentificadoresPersona#01 "Cédula de Identidad" 

*/