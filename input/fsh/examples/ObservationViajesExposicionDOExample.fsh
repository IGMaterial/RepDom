Instance: ObservationViajesExposicionDOExample
InstanceOf: ObservationViajesExposicionDO
Usage: #example
Title: "Viaje y exposición en caso de dengue"
Description: "Ejemplo sintético de antecedente de viaje y exposición relevante para un caso de dengue."

* status = #final
* code = $LOINC#10180-6 "Travel history"
* subject = Reference(PatientDOExample)
* effectivePeriod.start = "2026-10-18"
* effectivePeriod.end = "2026-10-24"
* valueString = "Viaje a una zona con transmisión de dengue y exposición a picaduras de mosquitos."
* note.text = "La paciente regresó a Santo Domingo un día antes del inicio de los síntomas."
