Instance: ObservationEstadoEmbarazoDOExample
InstanceOf: ObservationEstadoEmbarazoDO
Usage: #example
Title: "Estado de embarazo en caso de dengue"
Description: "Ejemplo sintético de estado de embarazo documentado durante la evaluación del caso de dengue."

* status = #final
* subject = Reference(PatientDOExample)
* effectiveDateTime = "2026-10-26T09:00:00-04:00"
* valueCodeableConcept = $SCT#77386006 "Pregnant"
* note.text = "Paciente con embarazo de 18 semanas referido durante la evaluación epidemiológica."
