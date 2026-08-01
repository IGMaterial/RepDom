Alias: $Composition-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/Composition-uv-ips

Profile: CompositionAR
Parent: $Composition-uv-ips
Id: CompositionAR
// Title: "Documento IPS Argentino"
// Description: "Perfil de Documento IPS AR"

* identifier 1.. MS
* status = #final
* status MS
* type MS
* subject 1.. MS
* subject only Reference(PacienteAR)
* date MS


/**************Autor**********************/
* author ..1 MS
* author only Reference(PractitionerAR) 
//* author.reference ..0
//* author.identifier 1.. MS
//* author.identifier.system = "http://refes.msal.gob.ar"
//* author.identifier.value 1.. MS


/**************Custodian**********************/

* custodian only Reference(OrganizationAREstablecimiento)


