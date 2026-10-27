Profile: ConditionCasoEpidemiologicoDO
Parent: ConditionDO
Title: "Caso epidemiológico DO"
Description: "Evento o enfermedad principal que motiva la notificación individual."
* clinicalStatus 1..1 MS
* verificationStatus 1..1 MS
* category 1..* MS
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category contains evento 1..1 MS
* category[evento] = CSCategoriaNotificacionDO#evento-epidemiologico
* code 1..1 MS
* code ^short = "Evento o enfermedad notificada"
* subject only Reference(PatientDO)
* onset[x] only dateTime
* onset[x] MS
* abatement[x] MS
* recordedDate 1..1 MS
* evidence MS
* evidence.detail only Reference(ObservationSignoSintomaDO or ObservationEstadoEmbarazoDO or ObservationViajesExposicionDO or DiagnosticReportDO)

