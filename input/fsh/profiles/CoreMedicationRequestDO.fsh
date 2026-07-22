Profile: CoreMedicationRequestDO
Parent: MedicationRequest
Id: core-medicationrequest-do
Title: "Receta Médica Core DO"
Description: "Perfil Core para prescripciones o solicitudes de medicamentos."
* ^url = "https://digital.msp.gob.do/fhir/core/StructureDefinition/core-medicationrequest-do"
* identifier 0..* MS
* status 1..1 MS
* intent 1..1 MS
* medication[x] 1..1 MS
* medicationReference only Reference(CoreMedicationDO)
* subject 1..1 MS
* subject only Reference(CorePatientDO)
* authoredOn 0..1 MS
* requester 0..1 MS
* requester only Reference(CorePractitionerDO or CorePractitionerRoleDO)
* dosageInstruction 0..* MS
* dispenseRequest 0..1 MS
