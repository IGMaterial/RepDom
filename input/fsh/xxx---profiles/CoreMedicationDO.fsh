Profile: CoreMedicationDO
Parent: Medication
Id: core-medication-do
Title: "Medicamento Core DO"
Description: "Perfil Core para medicamentos."
* ^url = "https://digital.msp.gob.do/fhir/core/StructureDefinition/core-medication-do"
* code 1..1 MS
* code from MedicamentosDOVS (extensible)
* status 0..1 MS
* form 0..1 MS
* ingredient 0..* MS
* ingredient.item[x] 1..1 MS
* ingredient.isActive 0..1 MS
* ingredient.strength 0..1 MS
