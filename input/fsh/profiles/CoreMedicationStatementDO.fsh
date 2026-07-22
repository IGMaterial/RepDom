Profile: CoreMedicationStatementDO
Parent: MedicationStatement
Id: core-medicationstatement-do
Title: "Historial Farmacológico Core DO"
Description: "Perfil Core para medicamentos declarados o en uso por el paciente."
* ^url = "https://digital.msp.gob.do/fhir/core/StructureDefinition/core-medicationstatement-do"
* status 1..1 MS
* medication[x] 1..1 MS
* medicationReference only Reference(CoreMedicationDO)
* subject 1..1 MS
* subject only Reference(CorePatientDO)
* effective[x] 0..1 MS
* dateAsserted 0..1 MS
* informationSource 0..1 MS
* dosage 0..* MS
* note 0..* MS
