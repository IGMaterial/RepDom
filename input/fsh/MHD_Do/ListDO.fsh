Profile:        ListDO
Parent: https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.Minimal.SubmissionSet


* subject only Reference(PatientDO)
//* entry.item only Reference(DocumentReferenceDO) 

* entry.item only Reference(DocumentReferenceDO or DocumentReferenceDOOnco or DocumentReferenceDONotif or DocumentReferenceDOLab)


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
