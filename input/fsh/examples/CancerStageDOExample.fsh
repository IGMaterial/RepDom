Instance: CancerStageDOExample
InstanceOf: CancerStageDO
Usage: #example
Title: "Estadio de ejemplo"
Description: "Estadio II del cáncer primario de ejemplo. Caso sintético."

* status = #final
* code = CSObservacionesOncoDO#estadio "Estadio del cáncer"
* subject = Reference(PatientDOExample)
* focus = Reference(PrimaryCancerConditionDOExample)
* effectiveDateTime = "2026-07-25"
* performer = Reference(OrganizationDOExample)
* valueCodeableConcept = CSResultadosOncoDO#estadio-II "Estadio II"
* method.text = "AJCC TNM 8.ª edición"
