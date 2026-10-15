Extension: HistologyMorphologyBehaviorDO
Id: HistologyMorphologyBehaviorDO
Title: "Morfología y comportamiento histológico DO"
Description: "Morfología del cáncer primario en CIE-O-3 (tipo histológico y comportamiento, p. ej. 8500/3). Misma forma que la extensión mcode-histology-morphology-behavior de mCODE, por lo que se mapea 1:1."
* ^context[0].type = #element
* ^context[0].expression = "Condition"
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from VSCIEO3MorfologiaDO (required)

Extension: LateralidadDO
Id: LateralidadDO
Title: "Lateralidad DO"
Description: "Lateralidad del sitio del cáncer primario."
* ^context[0].type = #element
* ^context[0].expression = "Condition.bodySite"
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from VSLateralidadDO (required)
