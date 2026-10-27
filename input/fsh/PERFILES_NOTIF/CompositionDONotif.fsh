Profile: CompositionDONotif
Parent: CompositionDO
Title: "Documento Clínico Notificación de Caso"
Description: "Notificación individual organizada alrededor de un caso epidemiológico."

* section 1..* MS
* section ^slicing.discriminator.type = #pattern
* section ^slicing.discriminator.path = "code"
* section ^slicing.ordered = false
* section ^slicing.rules = #open

* section.code 1..1 MS
* section.title 1..1 MS
* section.text 1..1 MS

* section contains
    DatosEnfermedad 1..1 MS and
    Observaciones 0..* MS and // SignosSintomas and Embarazo 0..1 MS and    ViajesExposicion 0..1 MS and
    Laboratorio 0..1 MS and    
    Conclusion 0..1 MS and
    DocumentoPDF 0..1 MS

* section[DatosEnfermedad].code = CSSeccionesNotificacionDO#evento
* section[DatosEnfermedad].entry 1..1 MS
* section[DatosEnfermedad].entry only Reference(ConditionCasoEpidemiologicoDO)

* section[Observaciones].code = CSSeccionesNotificacionDO#observaciones
* section[Observaciones].entry 0..1 MS
* section[Observaciones].entry only Reference(ObservationSignoSintomaDO or ObservationEstadoEmbarazoDO or ObservationViajesExposicionDO)

        // * section[SignosSintomas].code = CSSeccionesNotificacionDO#signos-sintomas
        // * section[SignosSintomas].entry 1..* MS
        // * section[SignosSintomas].entry only Reference(ObservationSignoSintomaDO)

        // * section[Embarazo].code = CSSeccionesNotificacionDO#embarazo
        // * section[Embarazo].entry 1..* MS
        // * section[Embarazo].entry only Reference(ObservationEstadoEmbarazoDO)

        // * section[ViajesExposicion].code = CSSeccionesNotificacionDO#viajes-exposicion
        // * section[ViajesExposicion].entry 1..* MS
        // * section[ViajesExposicion].entry only Reference(ObservationViajesExposicionDO)


* section[Laboratorio].code = CSSeccionesNotificacionDO#laboratorio
* section[Laboratorio].entry 1..* MS
* section[Laboratorio].entry only Reference(DiagnosticReportDO)

* section[Conclusion].code = CSSeccionesNotificacionDO#conclusion
* section[Conclusion].entry 1..1 MS
* section[Conclusion].entry only Reference(ConditionConclusionDO)

* section[DocumentoPDF].code = CSSeccionesNotificacionDO#documento-pdf
* section[DocumentoPDF].entry 1..1 MS
* section[DocumentoPDF].entry only Reference(BinaryDO)


