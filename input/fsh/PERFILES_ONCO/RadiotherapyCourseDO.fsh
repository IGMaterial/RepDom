Profile: RadiotherapyCourseDO
Parent: Procedure
Id: RadiotherapyCourseDO
Title: "Curso de Radioterapia DO"
Description: "Curso de radioterapia del cáncer primario, con su fecha de inicio y de término."

* status MS
* code 1..1 MS
* code = $SCT#1217123003 "Radiotherapy course of treatment (regime/therapy)"

* subject 1..1 MS
* subject only Reference(PatientDO)

* performed[x] 1..1 MS
* performed[x] only Period
* performed[x] ^short = "Inicio y término del curso"
* performer MS
* performer.actor only Reference(OrganizationDO)

* reasonReference 1..* MS
* reasonReference only Reference(PrimaryCancerConditionDO)
* reasonReference ^short = "Cáncer primario tratado"
* bodySite MS
* bodySite ^short = "Sitio irradiado"
