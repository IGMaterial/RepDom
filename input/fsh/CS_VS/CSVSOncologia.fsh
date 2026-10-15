// =====================================================================
// Terminología del Registro Nacional de Cáncer
// Los códigos locales quedan pendientes de revisión terminológica
// (mapeo a LOINC / SNOMED CT) antes de la publicación.
// =====================================================================

// ---------------- CodeSystems locales ----------------

CodeSystem: CSSeccionesOncoDO
Id: CSSeccionesOncoDO
Title: "Secciones del documento oncológico"
Description: "Códigos locales para las secciones del documento oncológico que no tienen un código LOINC acordado."
* ^caseSensitive = true
* ^experimental = false
* #diagnostico "Diagnóstico de cáncer primario" "Sección con la condición de cáncer primario del caso."
* #estadificacion "Estadificación y riesgo" "Sección con la estadificación y la clasificación de riesgo."

CodeSystem: CSObservacionesOncoDO
Id: CSObservacionesOncoDO
Title: "Observaciones oncológicas"
Description: "Códigos locales para el nombre de las observaciones oncológicas y sus componentes."
* ^caseSensitive = true
* ^experimental = false
* #estadio "Estadio del cáncer" "Grupo de estadio del cáncer primario."
* #riesgo "Grupo de riesgo" "Clasificación de riesgo del cáncer infantil."
* #breslow "Profundidad de Breslow" "Profundidad de invasión del melanoma, en milímetros."
* #variante-genomica "Variante genómica" "Variante genómica detectada en el tumor."
* #gen "Gen" "Gen estudiado (componente de la variante genómica)."
* #hgvs "Nomenclatura HGVS" "Descripción de la variante en nomenclatura HGVS."

CodeSystem: CSResultadosOncoDO
Id: CSResultadosOncoDO
Title: "Resultados oncológicos"
Description: "Códigos locales para valores cualitativos de patología, estadificación y riesgo."
* ^caseSensitive = true
* ^experimental = false
* #G1 "Grado 1" "Bien diferenciado."
* #G2 "Grado 2" "Moderadamente diferenciado."
* #G3 "Grado 3" "Poco diferenciado."
* #G4 "Grado 4" "Indiferenciado."
* #GX "Grado X" "Grado no evaluable."
* #re-positivo "Receptor de estrógeno positivo" "Receptor de estrógeno positivo."
* #re-negativo "Receptor de estrógeno negativo" "Receptor de estrógeno negativo."
* #rp-positivo "Receptor de progesterona positivo" "Receptor de progesterona positivo."
* #rp-negativo "Receptor de progesterona negativo" "Receptor de progesterona negativo."
* #her2-positivo "HER2 positivo" "HER2 positivo."
* #her2-negativo "HER2 negativo" "HER2 negativo."
* #her2-equivoco "HER2 equívoco" "HER2 equívoco."
* #estadio-0 "Estadio 0" "Estadio 0."
* #estadio-I "Estadio I" "Estadio I."
* #estadio-II "Estadio II" "Estadio II."
* #estadio-III "Estadio III" "Estadio III."
* #estadio-IV "Estadio IV" "Estadio IV."
* #estadio-desconocido "Estadio desconocido" "Estadio no determinado."
* #riesgo-bajo "Riesgo bajo" "Riesgo bajo."
* #riesgo-intermedio "Riesgo intermedio" "Riesgo intermedio."
* #riesgo-alto "Riesgo alto" "Riesgo alto."

// ---------------- ValueSets: clasificaciones ----------------

ValueSet: VSCIE10DO
Id: VSCIE10DO
Title: "Diagnósticos CIE-10"
Description: "Códigos de diagnóstico CIE-10 para el cáncer primario."
* ^experimental = false
* include codes from system $CIE10

ValueSet: VSCIEO3TopografiaDO
Id: VSCIEO3TopografiaDO
Title: "Topografía CIE-O-3"
Description: "Códigos de topografía CIE-O-3 (Cxx.x) para el sitio del cáncer primario."
* ^experimental = false
* include codes from system $CIEO3

ValueSet: VSCIEO3MorfologiaDO
Id: VSCIEO3MorfologiaDO
Title: "Morfología CIE-O-3"
Description: "Códigos de morfología CIE-O-3 (tipo histológico y comportamiento, p. ej. 8500/3)."
* ^experimental = false
* include codes from system $CIEO3

ValueSet: VSLateralidadDO
Id: VSLateralidadDO
Title: "Lateralidad"
Description: "Lateralidad del sitio del cáncer primario."
* ^experimental = false
* $SCT#7771000 "Left"
* $SCT#24028007 "Right"
* $SCT#51440002 "Right and left"

// ---------------- ValueSets: patología ----------------

ValueSet: VSGradoHistologicoDO
Id: VSGradoHistologicoDO
Title: "Grado histológico"
Description: "Grado histológico del tumor."
* ^experimental = false
* CSResultadosOncoDO#G1
* CSResultadosOncoDO#G2
* CSResultadosOncoDO#G3
* CSResultadosOncoDO#G4
* CSResultadosOncoDO#GX

ValueSet: VSReceptorEstrogenoDO
Id: VSReceptorEstrogenoDO
Title: "Receptor de estrógeno"
Description: "Resultado cualitativo del receptor de estrógeno."
* ^experimental = false
* CSResultadosOncoDO#re-positivo
* CSResultadosOncoDO#re-negativo

ValueSet: VSReceptorProgesteronaDO
Id: VSReceptorProgesteronaDO
Title: "Receptor de progesterona"
Description: "Resultado cualitativo del receptor de progesterona."
* ^experimental = false
* CSResultadosOncoDO#rp-positivo
* CSResultadosOncoDO#rp-negativo

ValueSet: VSHER2DO
Id: VSHER2DO
Title: "HER2"
Description: "Resultado cualitativo de HER2."
* ^experimental = false
* CSResultadosOncoDO#her2-positivo
* CSResultadosOncoDO#her2-negativo
* CSResultadosOncoDO#her2-equivoco

ValueSet: VSCodigoResultadoPatologiaDO
Id: VSCodigoResultadoPatologiaDO
Title: "Resultados estructurados de patología"
Description: "Resultados de patología que no caben en DiagnosticReport.conclusionCode."
* ^experimental = false
* CSObservacionesOncoDO#breslow
* CSObservacionesOncoDO#variante-genomica

// ---------------- ValueSets: estadificación y riesgo ----------------

ValueSet: VSEstadioDO
Id: VSEstadioDO
Title: "Grupo de estadio"
Description: "Grupo de estadio del cáncer primario."
* ^experimental = false
* CSResultadosOncoDO#estadio-0
* CSResultadosOncoDO#estadio-I
* CSResultadosOncoDO#estadio-II
* CSResultadosOncoDO#estadio-III
* CSResultadosOncoDO#estadio-IV
* CSResultadosOncoDO#estadio-desconocido

ValueSet: VSRiesgoInfantilDO
Id: VSRiesgoInfantilDO
Title: "Grupo de riesgo infantil"
Description: "Clasificación de riesgo del cáncer infantil."
* ^experimental = false
* CSResultadosOncoDO#riesgo-bajo
* CSResultadosOncoDO#riesgo-intermedio
* CSResultadosOncoDO#riesgo-alto
