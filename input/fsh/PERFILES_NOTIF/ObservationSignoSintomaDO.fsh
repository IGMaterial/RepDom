Profile: ObservationSignoSintomaDO
Parent: Observation
Title: "Signo o síntoma DO"
Description: "Hallazgo clínico del caso epidemiológico."
* status MS
* code MS
* subject 1..1 MS
* subject only Reference(PatientDO)
* effective[x] 1..1 MS
* effective[x] only dateTime or Period
* value[x] MS
* dataAbsentReason MS
* note MS

