Alias: $Composition-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/Composition-uv-ips

Profile: CompositionDONotif
Parent: Composition
Title: "Documento Clínico Notificación Caso"
Description: "Perfil para documentos Notificación Caso"

* status 1..1 MS
* type 1..1 MS


* subject 1..1 MS
* subject only Reference(PatientDO)

* date 1..1 MS

* author 1..* MS
* author only Reference(PractitionerDO or OrganizationDO)

* title 1..1 MS

* custodian 0..1 MS
* custodian only Reference(OrganizationDO)



//----- division de secciones -------
* section ^slicing.discriminator[0].type = #pattern
* section ^slicing.discriminator[=].path = "code"
* section ^slicing.ordered = false
* section ^slicing.rules = #open

* section ^short = "Sección del documento"
* section ^definition = "Sección de notificación de datos clínicos."

* section.code 1.. MS
* section.code from http://hl7.org/fhir/ValueSet/doc-section-codes (example)


* section contains
    EventoNotificado 0..1 MS and
    DocumentoPDF 0..1 MS


* section[EventoNotificado] ^short = "Sección Evento Notificado"
* section[EventoNotificado].code MS 
* section[EventoNotificado].code = $LOINC#99998-9
* section[EventoNotificado].title 1.. MS
* section[EventoNotificado].text 1.. MS


* section[DocumentoPDF] ^short = "Sección Documento PDF"
* section[DocumentoPDF].code MS 
* section[DocumentoPDF].code = $LOINC#99999-9
* section[DocumentoPDF].title 1.. MS
* section[DocumentoPDF].entry 1.. MS
* section[DocumentoPDF].entry only Reference($canonicaBinary)













/*



//----- division de secciones -------
* section ^slicing.discriminator[0].type = #pattern
* section ^slicing.discriminator[=].path = "code"
* section ^slicing.ordered = false
* section ^slicing.rules = #open

* section ^short = "Sección del documento"
* section ^definition = "Sección de notificación de datos clínicos."

* section.code 1.. MS
* section.code from http://hl7.org/fhir/ValueSet/doc-section-codes (example)


//--------- Secciones 
* section contains
    sectionDiagnosticos 0.. MS and
    sectionMedicacion 0.. MS and
    sectionAlergias 0.. MS

  
//------ 1. Diagnosticos------------

* section[sectionDiagnosticos] ^short = "Sección Diagnósticos"
* section[sectionDiagnosticos] ^definition = "Descripción de lista de diagnósticos determinados en el paciente."

* section[sectionDiagnosticos].code MS 
* section[sectionDiagnosticos].code = $loinc#11450-4

* section[sectionDiagnosticos].title 1.. MS

* section[sectionDiagnosticos].entry 1.. MS
* section[sectionDiagnosticos].entry only Reference($canonicaCondition)

* section[sectionDiagnosticos].entry ^slicing.discriminator[0].type = #profile
* section[sectionDiagnosticos].entry ^slicing.discriminator[=].path = "resolve()"
* section[sectionDiagnosticos].entry ^slicing.rules = #open
* section[sectionDiagnosticos].entry ^short = "Diagnósticos conocidos actualmente de relevancia para determinaciones clínicas en el paciente."



//------ 2. Medicacion------------

* section[sectionMedicacion] ^short = "Sección Medicacion"
* section[sectionMedicacion] ^definition = "Descripción de lista de medicacion del paciente."

* section[sectionMedicacion].code MS 
* section[sectionMedicacion].code = $loinc#10160-0
* section[sectionMedicacion].title 1.. MS
* section[sectionMedicacion].entry 1.. MS
* section[sectionMedicacion].entry only Reference($canonicaMedication)

* section[sectionMedicacion].entry ^slicing.discriminator[0].type = #profile
* section[sectionMedicacion].entry ^slicing.discriminator[=].path = "resolve()"
* section[sectionMedicacion].entry ^slicing.rules = #open
* section[sectionMedicacion].entry ^short = "Medicación del paciente."


//------ 3. Alergias------------

* section[sectionAlergias] ^short = "Sección Alergias"
* section[sectionAlergias] ^definition = "Descripción de lista de alergias conocidas del paciente."

* section[sectionAlergias].code MS 
* section[sectionAlergias].code = $loinc#48765-2
* section[sectionAlergias].title 1.. MS
* section[sectionAlergias].entry 1.. MS
//* section[sectionAlergias].entry only Reference($canonicaAlergia) 

* section[sectionAlergias].entry ^slicing.discriminator[0].type = #profile
* section[sectionAlergias].entry ^slicing.discriminator[=].path = "resolve()"
* section[sectionAlergias].entry ^slicing.rules = #open
* section[sectionAlergias].entry ^short = "Alergias del paciente."



//-------------- Ejemplo Composition--------------------------------------------------/


Instance: CompositionEjemploPy
InstanceOf: CompositionPy
Description: "Ejemplo de Documento-Composition."

Usage: #example

* type = $loinc#11450-4
* subject = Reference(Patient/PacienteEjemploPy)
* author = Reference(Practitioner/PractitionerEjemploPy)
* custodian = Reference(Organization/OrganizacionEjemploPy)
* status = #final
* title = "Resumen Digital en Atención - Ejemplo Paraguay"
* date = "2025-09-01"

* section[sectionDiagnosticos].code = $loinc#11450-4
* section[sectionDiagnosticos].title = "Diagnósticos"
* section[sectionDiagnosticos].entry = Reference(Condition/ConditionEjemploParaguay)

* section[sectionMedicacion].code = $loinc#10160-0
* section[sectionMedicacion].title = "Medicación Actual"
* section[sectionMedicacion].entry = Reference(MedicationStatement/MedicationStatementEjemploParaguay)

* section[sectionAlergias].code = $loinc#48765-2
* section[sectionAlergias].title = "Alergias Conocidas"
* section[sectionAlergias].entry = Reference(AllergyIntolerance/AlergiaPeruMedicamento)
* title = "Ejemplo de Documento Clinico Paraguay"
* status = #final


* section[0].title = "Diagnósticos"

* section[=].code = http://loinc.org#11450-4 "Problem list Reported"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Diagnósticos</div>"
* section[=].entry = Reference(Condition/ConditionEjemploParaguay)













Alias: $Composition-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/Composition-uv-ips

Profile: CompositionDO
Parent: $Composition-uv-ips
//Id: core-composition-do
Title: "Documento Clínico IPS DO"
Description: "Perfil para documentos clínicos FHIR."
//* ^url = "https://digital.msp.gob.do/fhir/core/StructureDefinition/core-composition-do"
* status 1..1 MS
* type 1..1 MS

* subject 1..1 MS
* subject only Reference(PatientDO)

* date 1..1 MS

* author 1..* MS
* author only Reference(PractitionerDO or OrganizationDO)

* title 1..1 MS

* custodian 0..1 MS
* custodian only Reference(OrganizationDO)
* section 0..* MS



*/