Profile: ObservationEstadoEmbarazoDO
Parent: Observation
Title: "Estado de embarazo DO"
Description: "Estado de embarazo en la fecha de evaluación."
* status MS
* code MS
* subject 1..1 MS
* subject only Reference(PatientDO)
* effective[x] 1..1 MS
* effective[x] only dateTime or Period
* value[x] MS
* dataAbsentReason MS
* note MS
* code = http://loinc.org#82810-3 "Pregnancy status"
* value[x] only CodeableConcept

