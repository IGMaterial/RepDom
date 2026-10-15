Instance: PathologyReportDOExample
InstanceOf: PathologyReportDO
Usage: #example
Title: "Informe de patología de ejemplo"
Description: "Biopsia de mama con grado histológico y marcadores RE, RP y HER2. Caso sintético."

* status = #final
* code = $LOINC#11526-1 "Pathology study"
* subject = Reference(PatientDOExample)
* effectiveDateTime = "2026-07-15"
* issued = "2026-07-20T12:00:00-04:00"
* performer = Reference(OrganizationDOExample)
* result = Reference(PathologyResultDOExample)
* conclusion = "Carcinoma ductal infiltrante, grado 2. RE positivo, RP positivo, HER2 negativo."
* conclusionCode[gradoHistologico] = CSResultadosOncoDO#G2 "Grado 2"
* conclusionCode[receptorEstrogeno] = CSResultadosOncoDO#re-positivo "Receptor de estrógeno positivo"
* conclusionCode[receptorProgesterona] = CSResultadosOncoDO#rp-positivo "Receptor de progesterona positivo"
* conclusionCode[her2] = CSResultadosOncoDO#her2-negativo "HER2 negativo"
