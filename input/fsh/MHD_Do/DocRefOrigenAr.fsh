Profile: DocumentReferenceDO
Parent: https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.Minimal.DocumentReference

/* Title: "Documento Refencia Origen"
Description: "Documento Refencia Origen." */


* type 1.. MS

//* --- Fecha -----
* date 1..1 MS
* date ^short = "Fecha de creación del documento"
* date ^definition = "Fecha de creación del documento"


* status 1..1 MS
* status = #current 
* status ^short = "Estado del Documento. Valor Fijo: current"
* status ^definition = "Indica el estado del documento."

//-----------PACIENTE --------- 
* subject 1..1 MS
* subject ^short = "Representa al paciente."

* subject.reference 1..
* subject.reference ^short = "Referencia al paciente."
* subject only Reference(PacienteDO)


//-----------CUSTODIAN ---------
* custodian ^short = "Nodo Dominio que custodia el documento."

* custodian.reference ^short = "URL que referencia al recurso organización."
* custodian only Reference(OrganizationDO)


//-----------Contenido : Composition ---------
* content.attachment MS
* content.attachment ^short = ""
* content.attachment.url 1..1 MS
* content.attachment.url ^short = "URL del documento almacenado."


/**********************************************************************/

// Instance: DocumentReferenceEjemploAR
// InstanceOf: DocumentReferenceAR
// Usage: #example
// Title : "DocumentReference"
// Description: "Ejemplo de Document Reference."

// * status = #current 
// * date = "2025-09-01T10:30:00Z"


// * type.coding.system = "http://loinc.org"
// * type.coding.code = #34105-7
// * type.coding.display = "Nota de consulta"

// //* subject = Reference(PacienteAr/PacienteEjemploPy)
// //* custodian = Reference(OrganizacionAr/OrganizacionEjemploPy)
// //* author = Reference(PractitionerAr/PractitionerEjemploPy)
// * content.attachment.contentType = #application/fhir+json
// //* content.attachment.url = "Bundle/BundleDocumentEjemploParaguay"


