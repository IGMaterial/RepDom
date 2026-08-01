ValueSet: TipoIdentificacionDOVS
Id: tipo-identificacion-do-vs
Title: "Tipos de Identificación DO"
Description: "ValueSet de tipos de identificación permitidos."
* include codes from system TipoIdentificacionDO

ValueSet: TipoEstablecimientoDOVS
Id: tipo-establecimiento-do-vs
Title: "Tipos de Establecimiento DO"
Description: "ValueSet de tipos de establecimientos de salud permitidos."
* include codes from system TipoEstablecimientoDO

ValueSet: EspecialidadDOVS
Id: especialidad-do-vs
Title: "Especialidades DO"
Description: "ValueSet inicial de especialidades profesionales."
* include codes from system EspecialidadDO

ValueSet: CondicionesClinicasDOVS
Id: condiciones-clinicas-do-vs
Title: "Condiciones Clínicas DO"
Description: "ValueSet preferido para condiciones clínicas. Inicialmente basado en SNOMED CT; puede complementarse con terminología nacional."
* include codes from system $SCT where concept is-a #404684003

ValueSet: MedicamentosDOVS
Id: medicamentos-do-vs
Title: "Medicamentos DO"
Description: "ValueSet para medicamentos. Debe sustituirse o complementarse con catálogo nacional de medicamentos."
* include codes from system $ATC
