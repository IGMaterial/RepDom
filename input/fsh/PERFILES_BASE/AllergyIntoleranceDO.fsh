Profile: AllergyIntoleranceDO
Parent: AllergyIntolerance
Id: allergyintolerance-do
Title: "Alergia o Intolerancia DO"
Description: "Perfil para alergias, intolerancias y reacciones adversas."
//* ^url = "https://digital.msp.gob.do/fhir/core/StructureDefinition/core-allergyintolerance-do"

* clinicalStatus 0..1 MS

* verificationStatus 0..1 MS

* type 0..1 MS

* category 0..* MS
* criticality 0..1 MS

* code 1..1 MS

* patient 1..1 MS
* patient only Reference(PatientDO)

* onset[x] 0..1 MS
* recordedDate 0..1 MS
* recorder 0..1 MS

//* recorder only Reference(PractitionerDO or PractitionerRoleDO)

* recorder only Reference(PractitionerDO)
* reaction 0..* MS
* reaction.manifestation 1..* MS
* reaction.severity 0..1 MS
