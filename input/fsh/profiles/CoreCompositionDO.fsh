Profile: CoreCompositionDO
Parent: Composition
Id: core-composition-do
Title: "Documento Clínico Core DO"
Description: "Perfil Core para documentos clínicos FHIR."
* ^url = "https://digital.msp.gob.do/fhir/core/StructureDefinition/core-composition-do"
* status 1..1 MS
* type 1..1 MS
* subject 1..1 MS
* subject only Reference(CorePatientDO)
* date 1..1 MS
* author 1..* MS
* author only Reference(CorePractitionerDO or CoreOrganizationDO)
* title 1..1 MS
* custodian 0..1 MS
* custodian only Reference(CoreOrganizationDO)
* section 0..* MS
