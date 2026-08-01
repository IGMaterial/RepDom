Alias: $PractitionerUvIps = http://hl7.org/fhir/uv/ips/StructureDefinition/Practitioner-uv-ips

Profile: PractitionerAR
Parent: $PractitionerUvIps

// Title: "Profesional Argentino"
// Description: "Perfil de Registro de Profesional CORE AR (REFEPS)"


* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains
    DocumentoUnico 1..1 MS and
    REFEPSid 1..1 MS
* identifier[DocumentoUnico].use = #official (exactly)
* identifier[DocumentoUnico].type = $v2-0203#NI
* identifier[DocumentoUnico].system 1..
* identifier[DocumentoUnico].system = "http://www.renaper.gob.ar/dni" (exactly)
* identifier[DocumentoUnico].system ^short = "RENAPER"
* identifier[DocumentoUnico].system ^definition = "Registro Nacional de las Personas de Argentina"
* identifier[DocumentoUnico].value 1.. MS
* identifier[DocumentoUnico].assigner.display 1..
* identifier[DocumentoUnico].assigner.display = "RENAPER" (exactly)
* identifier[REFEPSid].use = #usual (exactly)
* identifier[REFEPSid].type = $v2-0203#AC
* identifier[REFEPSid].system 1..
* identifier[REFEPSid].system = "http://refeps.msal.gob.ar"
* identifier[REFEPSid].value 1.. MS
* identifier[REFEPSid].period.start 1..
* active 1..
* name ..1
* name.use = #official
* name.family.extension contains
    MothersFamily named MothersLastName 0..1 and
    FathersFamily named FathersLastName 0..1
* name.prefix ..0
* name.suffix ..0
* telecom ..2
* gender from AdministrativeGender (required)
* birthDate MS
* qualification MS