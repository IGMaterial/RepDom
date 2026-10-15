Instance: PathologyResultDOExample
InstanceOf: PathologyResultDO
Usage: #example
Title: "Variante genómica de ejemplo"
Description: "Variante PIK3CA detectada en el tumor. Caso sintético."

* status = #final
* code = CSObservacionesOncoDO#variante-genomica "Variante genómica"
* subject = Reference(PatientDOExample)
* focus = Reference(PrimaryCancerConditionDOExample)
* effectiveDateTime = "2026-07-15"
* performer = Reference(OrganizationDOExample)
* component[gen].valueCodeableConcept.text = "PIK3CA"
* component[hgvs].valueCodeableConcept.text = "NM_006218.4:c.3140A>G"
