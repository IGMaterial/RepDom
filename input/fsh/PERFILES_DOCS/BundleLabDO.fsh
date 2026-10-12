
Profile: BundleLabDO
Parent: Bundle


/*   --------- Compostion ---------*/
* type = #document

//* entry[composition] ^short = "Composition."
//* entry[composition] ^definition = "Composition"

//* entry[composition].resource 1..1

//* entry[composition].resource only  $canonicaCompositionDo


// /* --------- PACIENTE ---------*/
// * entry[patient] ^short = "Paciente"
// * entry[patient] ^definition = "Paciente."

// * entry[patient].resource 1..
// * entry[patient].resource only  $canonicaPatientDO


// /* --------- ORGANIZATION ---------*/
// * entry[organization] ^short = "Establecimiento Salud"
// * entry[organization] ^definition = "Establecimiento de Salud."

// * entry[organization].resource 1..1
// * entry[organization].resource only $canonicaOrganizationDo

// /* --------- PROFESIONAL ---------*/
// * entry[practitioner] ^short = "Profesional"
// * entry[practitioner] ^definition = "Profesional."

// * entry[practitioner].resource 1..1
// * entry[practitioner].resource only $canonicaPractitionerDo


* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open

* entry.resource 1..1
* entry.fullUrl 1..1

* entry contains composition 1..1

// --- CNU raíz: bdl-11 + Composition única + slice compositionCNU 1..1. ---
* entry[composition].resource only CompositionDOLab
* entry[composition] ^short = "Documento de Consulta de Laboratorio"
