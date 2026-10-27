Profile: BundleOncoDO
Parent: BundleDocDO
Title: "Bundle Documento Oncológico"
Description: "Documento del caso para el Registro Nacional de Cáncer. Hereda de BundleDocDO las entradas composition, patient (PatientDO) y organization (OrganizationDO)."


/*   --------- Compostion ---------*/


* entry[composition] ^short = "Documento de Notificación Oncológica"
* entry[composition].resource only  CompositionDOOnco


/*   --------- Contenido clínico ---------*/

* entry contains
    primaryCancerCondition 1..1 MS and
    pathologyReport 0..* MS and
    pathologyResult 0..* MS and
    cancerStage 0..* MS and
    /** riskAssessment 0..1 MS and */
    surgicalProcedure 0..* MS and
    radiotherapyCourse 0..* MS and
    cancerMedication 0..* MS and
    relatedPersonTutor 0..1 MS

* entry[primaryCancerCondition] ^short = "Cáncer primario"
* entry[primaryCancerCondition].resource only PrimaryCancerConditionDO

* entry[pathologyReport] ^short = "Informe de patología"
* entry[pathologyReport].resource only PathologyReportDO

* entry[pathologyResult] ^short = "Resultado estructurado de patología (Breslow, variante genómica)"
* entry[pathologyResult].resource only PathologyResultDO

* entry[cancerStage] ^short = "Estadio del cáncer"
* entry[cancerStage].resource only CancerStageDO

/** entry[riskAssessment] ^short = "Grupo de riesgo (cáncer infantil)"
* entry[riskAssessment].resource only RiskAssessmentDO*/

* entry[surgicalProcedure] ^short = "Cirugía oncológica"
* entry[surgicalProcedure].resource only SurgicalProcedureDO

* entry[radiotherapyCourse] ^short = "Curso de radioterapia"
* entry[radiotherapyCourse].resource only RadiotherapyCourseDO

* entry[cancerMedication] ^short = "Tratamiento farmacológico oncológico"
* entry[cancerMedication].resource only CancerMedicationStatementDO

/** entry[relatedPersonTutor] ^short = "Tutor del paciente (cáncer infantil)"
* entry[relatedPersonTutor].resource only RelatedPersonTutorDO*/
