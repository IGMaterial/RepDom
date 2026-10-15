Profile: PathologyResultDO
Parent: Observation
Id: PathologyResultDO
Title: "Resultado de Patología DO"
Description: "Resultado estructurado de patología que no cabe en DiagnosticReport.conclusionCode: profundidad de Breslow (mm) o variante genómica. Lo referencia PathologyReportDO.result."

* obeys onco-breslow-1 and onco-variante-1

* status MS
* code 1..1 MS
* code from VSCodigoResultadoPatologiaDO (required)

* subject 1..1 MS
* subject only Reference(PatientDO)
* focus 1..1 MS
* focus only Reference(PrimaryCancerConditionDO)
* focus ^short = "Cáncer primario al que se refiere el resultado"

* effective[x] 0..1 MS
* performer MS
* performer only Reference(OrganizationDO)

* value[x] MS
* value[x] ^short = "Breslow: valueQuantity en mm"

// Variante genómica
* component MS
* component ^slicing.discriminator[0].type = #pattern
* component ^slicing.discriminator[=].path = "code"
* component ^slicing.rules = #open
* component contains
    gen 0..1 MS and
    hgvs 0..1 MS
* component[gen].code = CSObservacionesOncoDO#gen
* component[gen].value[x] only CodeableConcept
* component[gen] ^short = "Gen (HGNC)"
* component[hgvs].code = CSObservacionesOncoDO#hgvs
* component[hgvs].value[x] only CodeableConcept
* component[hgvs] ^short = "Variante en nomenclatura HGVS"

Invariant: onco-breslow-1
Description: "Si el resultado es Breslow, el valor debe ser valueQuantity en milímetros (UCUM mm)."
Expression: "code.coding.where(code = 'breslow').exists() implies (value.ofType(Quantity).exists() and value.ofType(Quantity).code = 'mm')"
Severity: #error

Invariant: onco-variante-1
Description: "Si el resultado es una variante genómica, debe informar el gen en component."
Expression: "code.coding.where(code = 'variante-genomica').exists() implies component.where(code.coding.code = 'gen').exists()"
Severity: #error
