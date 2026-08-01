
Profile: BundleDocAR
Parent: $Bundle-uv-ips

Id: BundleDocAR
// Title: "Bundle IPS Argentina"
// Description: "Estructura de Documentos y recursos relacionados."

/*   --------- Compostion ---------*/
* entry[composition] ^short = "Composition."
* entry[composition] ^definition = "Composition"

* entry[composition].resource 1..

* entry[composition].resource only  $canonicaComposition


/* --------- PACIENTE ---------*/
* entry[patient] ^short = "Paciente"
* entry[patient] ^definition = "Paciente."

* entry[patient].resource 1..
* entry[patient].resource only $canonicaPatientAr


/* --------- ORGANIZATION ---------*/
* entry[organization] ^short = "Establecimiento Salud"
* entry[organization] ^definition = "Establecimiento de Salud."

* entry[organization].resource 1..1
* entry[organization].resource only $canonicaOrganizationAREstablecimiento 

/* --------- PROFESIONAL ---------*/
* entry[practitioner] ^short = "Profesional"
* entry[practitioner] ^definition = "Profesional."

* entry[practitioner].resource 1..1
* entry[practitioner].resource only $canonicaPractitionerAR






// //------Entradas
// * entry MS
// * entry ^slicing.discriminator.type = #profile
// * entry ^slicing.discriminator.path = "resource"
// * entry ^slicing.description = "Corresponde a cada una de las entradas del Bundle."
// * entry ^slicing.rules = #closed
// * entry.resource MS

// // type already fixed to #document in parent profile $Bundle-uv-ips
// * timestamp MS
// * identifier MS


// * entry contains
//     Composition 0..1 and
//     Condition 0..* and    
//     Alergias 0..* and
//     Medicaciones 0..* and    
//     Patient 1..1 
//    // Organizacion 1..1 and
//    // Profesional 1..1
  


// /*   --------- Compostion ---------*/
// * entry[Composition] ^short = "RDA - Composition."
// * entry[Composition] ^definition = "Registro Digital de Atención - Composition"

// * entry[Composition].resource 1..
// //* entry[Composition].resource only $canonicaComposition


// /* --------- Condition ---------*/
// * entry[Condition] ^short = "Condiciones."
// * entry[Condition] ^definition = "Corresponden a los diagnosticos."

// * entry[Condition].resource 1..
// //* entry[Condition].resource only $canonicaCondition



// /* --------- Alergias ---------*/
// * entry[Alergias] ^short = "Alergias/Intolerancias"
// * entry[Alergias] ^definition = "Alergias/Intolerancias."

// * entry[Alergias].resource 1..
// //* entry[Alergias].resource only $canonicaAlergia 




// /* --------- Medicamentos ---------*/
// * entry[Medicaciones] ^short = "Medicamentos"
// * entry[Medicaciones] ^definition = "Medicamentos"

// * entry[Medicaciones].resource 1..
// //* entry[Medicaciones].resource only $canonicaMedication 


// /* --------- PACIENTE ---------*/
// * entry[Patient] ^short = "Paciente"
// * entry[Patient] ^definition = "Paciente."

// * entry[Patient].resource 1..
// //* entry[Patient].resource only $canonicaPaciente


// // /* --------- ORGANIZATION ---------*/
// // * entry[Organizacion] ^short = "Establecimiento"
// // * entry[Organizacion] ^definition = "Establecimiento."

// // * entry[Organizacion].resource 1..
// // //* entry[Organizacion].resource only $canonicaOrganization

// // /* --------- PROFESIONAL ---------*/
// // * entry[Profesional] ^short = "Profesional"
// // * entry[Profesional] ^definition = "Profesional."

// // * entry[Profesional].resource 1..
// // //* entry[Profesional].resource only $canonicaPractitioner


/*************************************************************************************************/

// Instance : BundleDocumentEjemploArgentina
// InstanceOf : BundleDocAr
// Title : "Bundle IPS - Argentina"

// Usage : #example
// Description: "Ejemplo de Bundle"

// //* meta.profile = $canonicaBundle
// * type = #document

// * timestamp = "2023-05-01T10:30:00Z"
// * identifier.system = "urn:oid"
// * identifier.value = "28b95815-76ce-457b-b7ae-a972e527db40"


// * entry[0].fullUrl = "Composition/CompositionEjemploArgentina"
// * entry[=].resource = CompositionEjemploArgentina

// //Condition
// * entry[+].fullUrl = "Condition/ConditionEjemploArgentina"
// * entry[=].resource = ConditionEjemploArgentina


// //Alergia-Intolerancia
// * entry[+].fullUrl = "AllergyIntolerance/AlergiaPeruMedicamento"
// * entry[=].resource = AlergiaPeruMedicamento



// //MEdicamentos
// * entry[+].fullUrl = "MedicationStatement/MedicationStatementEjemploParaguay"
// * entry[=].resource = MedicationStatementEjemploParaguay


// //Patient
// * entry[+].fullUrl = "Patient/PacienteEjemploPy"
// * entry[=].resource = PacienteEjemploPy

// //Organization
// //* entry[+].fullUrl = "OrganizacionPe/OrganizacionEstablecimientoEjemplo"
// //* entry[=].resource = OrganizacionEstablecimientoEjemplo

// //Profesional -- 
// * entry[+].fullUrl = "Practitioner/PractitionerEjemploPy"
// * entry[=].resource = PractitionerEjemploPy
