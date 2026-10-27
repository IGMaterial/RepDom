Profile: BundleNotifDO
Parent: BundleDocDO
Title: "Bundle de notificación epidemiológica DO"
Description: "Documento de notificación individual con la Composition como primera entrada y los recursos referenciados incluidos."
* identifier 1..1 MS
* identifier.system 1..1 MS
* identifier.value 1..1 MS
* timestamp 1..1 MS
* obeys notif-composition-primera
* entry[composition].resource only CompositionDONotif
* entry[composition] ^short = "Documento de notificación epidemiológica"
* entry contains caso 1..1 MS
* entry[caso].resource only ConditionCasoEpidemiologicoDO

Invariant: notif-composition-primera
Description: "La primera entrada debe ser la Composition del documento."
Expression: "entry.first().resource.is(Composition)"
Severity: #error

