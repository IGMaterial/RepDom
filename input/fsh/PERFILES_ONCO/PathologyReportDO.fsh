Profile: PathologyReportDO
Parent: DiagnosticReport
Id: PathologyReportDO
Title: "Informe de Patología DO"
Description: "Informe de anatomía patológica del cáncer primario. Reúne la biopsia, el grado histológico y los marcadores cualitativos (RE, RP, HER2). Breslow y variantes genómicas van en PathologyResultDO. Deriva de DiagnosticReport y no de DiagnosticReportDO, porque ese perfil exige presentedForm 1..1."

* status MS

* code 1..1 MS
* code = $LOINC#11526-1 "Pathology study"

* subject 1..1 MS
* subject only Reference(PatientDO)

// Biopsia
* effective[x] 1..1 MS
* effective[x] only dateTime
* effective[x] ^short = "Fecha de toma de la muestra (biopsia)"
* issued 0..1 MS
* issued ^short = "Fecha de emisión del informe"
* performer 1..* MS
* performer only Reference(OrganizationDO)
* performer ^short = "Establecimiento que emite el informe"

// Resultados estructurados (Breslow, variante genómica)
* result 0..* MS
* result only Reference(PathologyResultDO)

* conclusion 0..1 MS
* conclusion ^short = "Diagnóstico del patólogo en texto libre"

// Grado histológico y marcadores cualitativos
* conclusionCode MS
* conclusionCode ^slicing.discriminator[0].type = #value
* conclusionCode ^slicing.discriminator[=].path = "$this"
* conclusionCode ^slicing.rules = #open
* conclusionCode ^short = "Grado histológico y marcadores cualitativos"
* conclusionCode contains
    gradoHistologico 0..1 MS and
    receptorEstrogeno 0..1 MS and
    receptorProgesterona 0..1 MS and
    her2 0..1 MS
* conclusionCode[gradoHistologico] from VSGradoHistologicoDO (required)
* conclusionCode[gradoHistologico] ^short = "Grado histológico"
* conclusionCode[receptorEstrogeno] from VSReceptorEstrogenoDO (required)
* conclusionCode[receptorEstrogeno] ^short = "Receptor de estrógeno (RE)"
* conclusionCode[receptorProgesterona] from VSReceptorProgesteronaDO (required)
* conclusionCode[receptorProgesterona] ^short = "Receptor de progesterona (RP)"
* conclusionCode[her2] from VSHER2DO (required)
* conclusionCode[her2] ^short = "HER2"

* presentedForm 0..* MS
* presentedForm ^short = "Informe original (PDF), opcional"
