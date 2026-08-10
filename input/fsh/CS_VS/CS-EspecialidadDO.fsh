CodeSystem: CSEspecialidadDO
Title: "Especialidades Profesionales DO"
Description: "Catálogo inicial de especialidades profesionales para Practitioner."
//* ^url = "https://digital.msp.gob.do/fhir/core/CodeSystem/especialidad-do"
//*// ^caseSensitive = true
* ^content = #fragment
* #MG "Medicina general"
* #MI "Medicina interna"
* #PED "Pediatría"
* #GINOBS "Ginecología y obstetricia"
* #CARD "Cardiología"
* #ENF "Enfermería"
* #FARM "Farmacia"

ValueSet: VSEspecialidadDO
Id: VSEspecialidadDO
Title: "Especialidades Profesionales DO"
Description:  "Conjunto de valores para las Especialidades Profesionales DO."
* ^experimental = false
* ^status = #active

* include codes from system CSEspecialidadDO