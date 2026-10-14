Profile: BundleDocDO
Parent: Bundle

* type = #document

* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open

* entry.resource 1..1
* entry.fullUrl 1..1

* entry contains
    composition 1..1 and
    patient 1..1 and
    organization 1..1

// --------- COMPOSITION ---------
* entry[composition] ^short = "Documento clínico"
* entry[composition] ^definition = "Composition del documento clínico."

// --------- PATIENT ---------
* entry[patient] ^short = "Paciente"
* entry[patient] ^definition = "Paciente del documento clínico."
* entry[patient].resource only PatientDO

// --------- ORGANIZATION ---------
* entry[organization] ^short = "Establecimiento de salud"
* entry[organization] ^definition = "Organización del documento clínico."
* entry[organization].resource only OrganizationDO
