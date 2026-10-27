Instance: CompositionDONotifExample
InstanceOf: CompositionDONotif
Usage: #example
Title: "Notificación individual de caso de dengue"
Description: "Documento sintético de notificación epidemiológica de un caso confirmado de dengue en una paciente embarazada."

* status = #final
* type = $LOINC#68991-9 "Case notification panel"
* subject = Reference(PatientDOExample)
* date = "2026-10-26T10:00:00-04:00"
* author = Reference(OrganizationDOExample)
* title = "Notificación individual de caso confirmado de dengue"
* custodian = Reference(OrganizationDOExample)

* section[DatosEnfermedad].title = "Datos de la enfermedad"
* section[DatosEnfermedad].text.status = #generated
* section[DatosEnfermedad].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Caso confirmado de dengue.</div>"
* section[DatosEnfermedad].entry = Reference(ConditionCasoEpidemiologicoDOExample)

* section[Observaciones][0].title = "Signos y síntomas"
* section[Observaciones][0].text.status = #generated
* section[Observaciones][0].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Fiebre y cefalea de inicio reciente.</div>"
* section[Observaciones][0].entry = Reference(ObservationSignoSintomaDOExample)

* section[Observaciones][1].title = "Estado de embarazo"
* section[Observaciones][1].text.status = #generated
* section[Observaciones][1].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Embarazo de 18 semanas.</div>"
* section[Observaciones][1].entry = Reference(ObservationEstadoEmbarazoDOExample)

* section[Observaciones][2].title = "Viajes y exposición"
* section[Observaciones][2].text.status = #generated
* section[Observaciones][2].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Antecedente de viaje y exposición a picaduras de mosquitos.</div>"
* section[Observaciones][2].entry = Reference(ObservationViajesExposicionDOExample)

* section[Conclusion].title = "Conclusión epidemiológica"
* section[Conclusion].text.status = #generated
* section[Conclusion].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Caso confirmado de dengue.</div>"
* section[Conclusion].entry = Reference(ConditionConclusionDOExample)
