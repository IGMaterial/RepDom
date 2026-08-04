
Alias: $medicationstatement-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/MedicationStatement-uv-ips

Profile: MedicationStatementDO
Parent: $medicationstatement-uv-ips
Title: "Historial Farmacológico DO"
Description: "Perfil para medicamentos declarados o en uso por el paciente."

* status 1..1 MS
//* medication[x] 1..1 MS
* medicationCodeableConcept 1..1 MS
* medicationCodeableConcept from MedicamentosDOVS (extensible)

//* medicationReference only Reference(CoreMedicationDO)

* subject 1..1 MS
* subject only Reference(PatientDO)

//* effective[x] 0..1 MS
* dateAsserted 0..1 MS
* informationSource 0..1 MS

* dosage 0..* MS
* note 0..* MS
