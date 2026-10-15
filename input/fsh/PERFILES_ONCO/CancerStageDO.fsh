Profile: CancerStageDO
Parent: Observation
Id: CancerStageDO
Title: "Estadio del Cáncer DO"
Description: "Grupo de estadio del cáncer primario."

* status MS
* code 1..1 MS
* code = CSObservacionesOncoDO#estadio

* subject 1..1 MS
* subject only Reference(PatientDO)
* focus 1..1 MS
* focus only Reference(PrimaryCancerConditionDO)
* focus ^short = "Cáncer primario estadificado"

* effective[x] 1..1 MS
* effective[x] only dateTime
* effective[x] ^short = "Fecha de estadificación"
* performer MS
* performer only Reference(OrganizationDO)

* value[x] 1..1 MS
* value[x] only CodeableConcept
* valueCodeableConcept from VSEstadioDO (extensible)
* method MS
* method ^short = "Sistema de estadificación (TNM, FIGO, Ann Arbor, etc.)"
