
Profile: BundleDocDO
Parent: $Bundle-uv-ips

Id: BundleDocDO
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
* entry[patient].resource only $canonicaPatientDO


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


/**************Profile: IPSBundleDO
Parent: http://hl7.org/fhir/uv/ips/StructureDefinition/Bundle-uv-ips
Id: ips-bundle-do
Title: "Bundle IPS DO"
Description: "Documento IPS DO empaquetado como Bundle de tipo document."
* ^url = "https://digital.msp.gob.do/fhir/ips/StructureDefinition/ips-bundle-do"
* entry[composition].resource only IPSCompositionDO
*/