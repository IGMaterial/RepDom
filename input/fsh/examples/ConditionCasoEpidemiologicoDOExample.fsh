Instance: ConditionCasoEpidemiologicoDOExample
InstanceOf: ConditionCasoEpidemiologicoDO
Usage: #example
Title: "Caso epidemiológico de dengue"
Description: "Ejemplo sintético de un caso de dengue para notificación epidemiológica."

* clinicalStatus = #active
* verificationStatus = #confirmed
* category[evento] = CSCategoriaNotificacionDO#evento-epidemiologico
* code = $CIE10#A90 "Dengue"
* subject = Reference(PatientDOExample)
* onsetDateTime = "2026-10-25"
* recordedDate = "2026-10-26"
* evidence.detail[0] = Reference(ObservationSignoSintomaDOExample)
* evidence.detail[1] = Reference(ObservationEstadoEmbarazoDOExample)
* evidence.detail[2] = Reference(ObservationViajesExposicionDOExample)
* note.text = "Caso sintético; datos utilizados únicamente con fines de ejemplo."
