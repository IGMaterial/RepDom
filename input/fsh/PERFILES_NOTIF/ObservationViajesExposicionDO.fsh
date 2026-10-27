Profile: ObservationViajesExposicionDO
Parent: Observation
Title: "Viajes y exposición DO"
Description: "Antecedente de viaje o exposición relevante para el caso epidemiológico."
* status MS
* code MS
* subject 1..1 MS
* subject only Reference(PatientDO)
* effective[x] 1..1 MS
* effective[x] only dateTime or Period
* value[x] MS
* dataAbsentReason MS
* note MS

