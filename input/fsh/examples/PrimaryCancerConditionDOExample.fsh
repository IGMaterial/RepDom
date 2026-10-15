Instance: PrimaryCancerConditionDOExample
InstanceOf: PrimaryCancerConditionDO
Usage: #example
Title: "Cáncer primario de ejemplo"
Description: "Carcinoma ductal infiltrante de la mama izquierda, cuadrante superior externo. Caso sintético."

* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed
* category = http://terminology.hl7.org/CodeSystem/condition-category#problem-list-item
* code = $CIE10#C50.4 "Neoplasia maligna del cuadrante superior externo de la mama"
* bodySite = $CIEO3#C50.4 "Cuadrante superior externo de la mama"
* bodySite.extension[lateralidad].valueCodeableConcept = $SCT#7771000 "Left"
* extension[morfologia].valueCodeableConcept = $CIEO3#8500/3 "Carcinoma ductal infiltrante, SAI"
* subject = Reference(PatientDOExample)
* onsetDateTime = "2026-07-20"
* recordedDate = "2026-07-28"
* evidence.detail = Reference(PathologyReportDOExample)
