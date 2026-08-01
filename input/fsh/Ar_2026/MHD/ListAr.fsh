Profile:        ListAR
Parent: https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.Minimal.SubmissionSet


* subject only Reference(PacienteAR)
* entry.item only Reference(DocumentReferenceOrigenAR)

/***************************************************************

*/

/****************************************************************

Instance: ListEjemploAR
InstanceOf: ListAr
Usage: #example
Title : "List"
Description: "Ejemplo de List."

* date = "2025-09-01T10:30:00Z"
* entry.item = Reference(DocumentReference/DocumentReferenceEjemploAR)
* subject = Reference(Patient/PacienteEjemploAR)
* status = #current
* mode = #working
******/