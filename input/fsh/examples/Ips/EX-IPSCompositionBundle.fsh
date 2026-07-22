Instance: example-ips-composition-do
InstanceOf: IPSCompositionDO
Usage: #example

* status = #final
* type = http://loinc.org#60591-5 "Patient summary Document"
* subject = Reference(example-ips-patient-do)
* date = "2026-04-24T10:00:00-04:00"
* author[0] = Reference(example-ips-practitioner-do)
* title = "Resumen Internacional del Paciente"
* custodian = Reference(example-ips-organization-do)

* section[sectionProblems].title = "Problemas"
* section[sectionProblems].code = http://loinc.org#11450-4 "Problem list - Reported"
* section[sectionProblems].text.status = #generated
* section[sectionProblems].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Paciente con hipertensión arterial registrada como condición activa.</div>"
* section[sectionProblems].entry[0] = Reference(example-ips-condition-do)

* section[sectionAllergies].title = "Alergias e intolerancias"
* section[sectionAllergies].code = http://loinc.org#48765-2 "Allergies and adverse reactions Document"
* section[sectionAllergies].text.status = #generated
* section[sectionAllergies].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Alergia a penicilina.</div>"
* section[sectionAllergies].entry[0] = Reference(example-ips-allergy-do)

* section[sectionMedications].title = "Medicamentos"
* section[sectionMedications].code = http://loinc.org#10160-0 "History of Medication use Narrative"
* section[sectionMedications].text.status = #generated
* section[sectionMedications].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Uso activo de losartán 50 mg vía oral diario.</div>"
* section[sectionMedications].entry[0] = Reference(example-ips-medicationstatement-do)

Instance: example-ips-bundle-do
InstanceOf: IPSBundleDO
Title: "Ejemplo Bundle IPS DO"
Usage: #example
* identifier.system = "https://digital.msp.gob.do/fhir/sid/documento-ips"
* identifier.value = "IPS-DO-0001"
* type = #document
* timestamp = "2026-03-30T10:00:00-04:00"
* entry[0].fullUrl = "urn:uuid:composition"
* entry[0].resource = example-ips-composition-do
* entry[1].fullUrl = "urn:uuid:patient"
* entry[1].resource = example-ips-patient-do
* entry[2].fullUrl = "urn:uuid:practitioner"
* entry[2].resource = example-ips-practitioner-do
* entry[3].fullUrl = "urn:uuid:organization"
* entry[3].resource = example-ips-organization-do
* entry[4].fullUrl = "urn:uuid:condition"
* entry[4].resource = example-ips-condition-do
* entry[5].fullUrl = "urn:uuid:allergy"
* entry[5].resource = example-ips-allergy-do
* entry[6].fullUrl = "urn:uuid:medication"
* entry[6].resource = example-ips-medication-do
* entry[7].fullUrl = "urn:uuid:medicationstatement"
* entry[7].resource = example-ips-medicationstatement-do
