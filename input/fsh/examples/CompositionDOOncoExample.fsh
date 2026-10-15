Instance: CompositionDOOncoExample
InstanceOf: CompositionDOOnco
Usage: #example
Title: "Documento oncológico de ejemplo"
Description: "Documento del caso con las secciones de diagnóstico, patología, estadificación y tratamientos. Caso sintético."

* status = #final
* type = $LOINC#115562-1 "Oncology Clinical Document"
* subject = Reference(PatientDOExample)
* date = "2026-09-15T10:00:00-04:00"
* author = Reference(OrganizationDOExample)
* title = "Notificación de caso al Registro Nacional de Cáncer"
* custodian = Reference(OrganizationDOExample)

* section[Diagnostico].title = "Diagnóstico"
* section[Diagnostico].code = CSSeccionesOncoDO#diagnostico "Diagnóstico de cáncer primario"
* section[Diagnostico].text.status = #generated
* section[Diagnostico].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Carcinoma ductal infiltrante de mama izquierda (C50.4, 8500/3).</div>"
* section[Diagnostico].entry = Reference(PrimaryCancerConditionDOExample)

* section[Patologia].title = "Patología y biomarcadores"
* section[Patologia].code = $LOINC#30954-2 "Relevant diagnostic tests/laboratory data Narrative"
* section[Patologia].text.status = #generated
* section[Patologia].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Grado 2. RE positivo, RP positivo, HER2 negativo. Variante PIK3CA.</div>"
* section[Patologia].entry = Reference(PathologyReportDOExample)

* section[Estadificacion].title = "Estadificación"
* section[Estadificacion].code = CSSeccionesOncoDO#estadificacion "Estadificación y riesgo"
* section[Estadificacion].text.status = #generated
* section[Estadificacion].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Estadio II (AJCC TNM 8.ª edición).</div>"
* section[Estadificacion].entry = Reference(CancerStageDOExample)

* section[Tratamientos].title = "Tratamientos"
* section[Tratamientos].code = $LOINC#47519-4 "History of Procedures Document"
* section[Tratamientos].text.status = #generated
* section[Tratamientos].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Mastectomía parcial. Hormonoterapia con tamoxifeno.</div>"
* section[Tratamientos].entry[0] = Reference(SurgicalProcedureDOExample)
* section[Tratamientos].entry[+] = Reference(CancerMedicationStatementDOExample)
