Profile: ConditionConclusionDO
Parent: ConditionDO
Title: "Conclusión epidemiológica DO"
Description: "Conclusión del caso; la clasificación final se registra en code y el estado de confirmación en verificationStatus."
* clinicalStatus 1..1 MS
* verificationStatus 1..1 MS
* category 1..* MS
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category contains conclusion 1..1 MS
* category[conclusion] = CSCategoriaNotificacionDO#conclusion-epidemiologica
* code 1..1 MS
* code ^short = "Conclusión o clasificación final del caso"
* subject only Reference(PatientDO)
* recordedDate 1..1 MS
* note MS

