Instance: ObservationSignoSintomaDOExample
InstanceOf: ObservationSignoSintomaDO
Usage: #example
Title: "Signo y síntoma en caso de dengue"
Description: "Ejemplo sintético de fiebre y cefalea asociados a un caso de dengue."

* status = #final
* code = $SCT#386661006 "Fever"
* subject = Reference(PatientDOExample)
* effectiveDateTime = "2026-10-25T08:00:00-04:00"
* valueCodeableConcept = $SCT#52101004 "Present"
* note.text = "La paciente refiere fiebre y cefalea de inicio reciente."
