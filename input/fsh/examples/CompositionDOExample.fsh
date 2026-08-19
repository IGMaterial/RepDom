Instance: CompositionDOExample
InstanceOf: CompositionDO
Usage: #example
Title: "Ejemplo de CompositionDO"
Description: "Ejemplo de composición clínica para el documento IPS DO."

* status = #final
* type = http://loinc.org#60591-5 "Patient summary Document"
* subject = Reference(PatientDO/PatientDOExample)
* date = "2026-08-19"
* author = Reference(PractitionerDO/PractitionerDOExample)
* title = "Resumen clínico del paciente"
* custodian = Reference(OrganizationDO/OrganizationDOExample)

// ------- seccion de condition, problemas activos.
* section[0].title = "Condiciones del Paciente"

* section[=].code = http://loinc.org#11450-4 "Problem list Reported"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">CONDICIONES</div>"
* section[=].entry = Reference(Condition/ConditionDOEjemplo)


// ------- seccion de medicamentos
* section[+].title = "Medicamentos"

* section[=].code = http://loinc.org#10160-0 "Hx of Medication use"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">MEDICAMENTOS</div>"
* section[=].entry = Reference(MedicationStatement/MedicationStatementDOEjemplo)


// ------- seccion de Alergias
* section[+].title = "Alergias"

* section[=].code = http://loinc.org#48765-2 "Allergies and adverse reactions Document."
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">ALERGIAS</div>"
* section[=].entry = Reference(AllergyIntolerance/AllergyIntoleranceDOExample)