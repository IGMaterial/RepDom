Profile: SurgicalProcedureDO
Parent: Procedure
Id: SurgicalProcedureDO
Title: "Cirugía Oncológica DO"
Description: "Procedimiento quirúrgico de tratamiento del cáncer primario."

* status MS
* category 1..1 MS
* category = $SCT#387713003 "Surgical procedure"
* code 1..1 MS
* code ^short = "Procedimiento quirúrgico realizado"

* subject 1..1 MS
* subject only Reference(PatientDO)

* performed[x] 1..1 MS
* performed[x] only dateTime
* performed[x] ^short = "Fecha de la cirugía"
* performer MS
* performer.actor only Reference(OrganizationDO)

* reasonReference 1..* MS
* reasonReference only Reference(PrimaryCancerConditionDO)
* reasonReference ^short = "Cáncer primario tratado"
* bodySite MS
