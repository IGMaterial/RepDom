Instance: BundleNotifDOExample
InstanceOf: BundleNotifDO
Usage: #example
Title: "Bundle de notificación de caso de dengue"
Description: "Bundle documental sintético que reúne todos los recursos del caso de dengue notificado."

* identifier.system = "https://example.org/identifiers/notificaciones"
* identifier.value = "DENGUE-2026-0001"
* timestamp = "2026-10-26T10:00:00-04:00"
* entry[composition].fullUrl = "urn:uuid:composition-notif-dengue-example"
* entry[composition].resource = CompositionDONotifExample
* entry[patient].fullUrl = "urn:uuid:patient-do-example"
* entry[patient].resource = PatientDOExample
* entry[organization].fullUrl = "urn:uuid:organization-do-example"
* entry[organization].resource = OrganizationDOExample
* entry[caso].fullUrl = "urn:uuid:case-dengue-example"
* entry[caso].resource = ConditionCasoEpidemiologicoDOExample
* entry[4].fullUrl = "urn:uuid:observation-signs-dengue-example"
* entry[4].resource = ObservationSignoSintomaDOExample
* entry[5].fullUrl = "urn:uuid:observation-pregnancy-dengue-example"
* entry[5].resource = ObservationEstadoEmbarazoDOExample
* entry[6].fullUrl = "urn:uuid:observation-travel-dengue-example"
* entry[6].resource = ObservationViajesExposicionDOExample
* entry[7].fullUrl = "urn:uuid:conclusion-dengue-example"
* entry[7].resource = ConditionConclusionDOExample
