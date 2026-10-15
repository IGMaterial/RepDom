Profile: PrimaryCancerConditionDO
Parent: ConditionDO
Id: PrimaryCancerConditionDO
Title: "Cáncer Primario DO"
Description: "Cáncer primario del caso registrado. Es el ancla del documento oncológico: patología, estadificación y tratamientos lo referencian."

// Morfología CIE-O-3 (tipo histológico y comportamiento)
* extension contains HistologyMorphologyBehaviorDO named morfologia 0..1 MS
* extension[morfologia] ^short = "Morfología CIE-O-3 (p. ej. 8500/3)"

// Diagnóstico CIE-10
* code 1..1 MS
* code from VSCIE10DO (required)
* code ^short = "Diagnóstico CIE-10"

// Topografía CIE-O-3 y lateralidad
* bodySite 1..1 MS
* bodySite from VSCIEO3TopografiaDO (required)
* bodySite ^short = "Topografía CIE-O-3 (p. ej. C50.4)"
* bodySite.extension contains LateralidadDO named lateralidad 0..1 MS
* bodySite.extension[lateralidad] ^short = "Lateralidad del sitio primario"

* subject only Reference(PatientDO)

// Fecha de diagnóstico
* onset[x] 1..1 MS
* onset[x] only dateTime
* onset[x] ^short = "Fecha de diagnóstico"

// Evidencia: informe de patología
* evidence MS
* evidence.detail MS
* evidence.detail only Reference(PathologyReportDO)
* evidence.detail ^short = "Informe de patología que respalda el diagnóstico"
