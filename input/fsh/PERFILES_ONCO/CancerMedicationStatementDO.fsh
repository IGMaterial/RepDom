Profile: CancerMedicationStatementDO
Parent: MedicationStatementDO
Id: CancerMedicationStatementDO
Title: "Tratamiento Farmacológico Oncológico DO"
Description: "Tratamiento sistémico del cáncer primario (quimioterapia, hormonoterapia, inmunoterapia, terapia dirigida)."

* reasonReference 1..* MS
* reasonReference only Reference(PrimaryCancerConditionDO)
* reasonReference ^short = "Cáncer primario tratado"

* informationSource only Reference(OrganizationDO)
* informationSource ^short = "Establecimiento que informa el tratamiento"
