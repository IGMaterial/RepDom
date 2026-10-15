Profile: RiskAssessmentDO
Parent: Observation
Id: RiskAssessmentDO
Title: "Grupo de Riesgo DO"
Description: "Grupo de riesgo del cáncer infantil. Es un perfil de Observation, no del recurso RiskAssessment."

* status MS
* code 1..1 MS
* code = CSObservacionesOncoDO#riesgo

* subject 1..1 MS
* subject only Reference(PatientDO)
* focus 1..1 MS
* focus only Reference(PrimaryCancerConditionDO)

* effective[x] 0..1 MS
* performer MS
* performer only Reference(OrganizationDO)

* value[x] 1..1 MS
* value[x] only CodeableConcept
* valueCodeableConcept from VSRiesgoInfantilDO (required)
* method MS
* method ^short = "Protocolo usado para la clasificación de riesgo"
