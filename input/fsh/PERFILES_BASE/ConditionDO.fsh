Profile: ConditionDO
Parent: Condition
Id: condition-do
Title: "Condición DO"
Description: "Perfil  para problemas, diagnósticos y condiciones clínicas."

* clinicalStatus 0..1 MS

* verificationStatus 0..1 MS
* category 0..* MS
* severity 0..1 MS

* code 1..1 MS
* code from CondicionesClinicasDOVS (extensible)

* subject 1..1 MS
* subject only Reference(PatientDO)

* encounter 0..1 MS
* onset[x] 0..1 MS

* recordedDate 0..1 MS

* recorder 0..1 MS
* recorder only Reference(PractitionerDO)

* note 0..* MS


//* ^url = "https://digital.msp.gob.do/fhir/core/StructureDefinition/core-condition-do"


ValueSet: CondicionesClinicasDOVS
Id: condiciones-clinicas-do-vs
Title: "Condiciones Clínicas DO"
Description: "ValueSet preferido para condiciones clínicas. Inicialmente basado en SNOMED CT; puede complementarse con terminología nacional."
* include codes from system $SCT where concept is-a #404684003