# Perfiles FHIR

Esta página resume los perfiles activos definidos en los archivos FSH de la guía y sirve como punto de entrada para la documentación técnica del IG.

Los perfiles incluidos aquí se han alineado con los recursos y restricciones definidos actualmente en el proyecto. La documentación se mantiene como referencia para implementadores, analistas y equipos que necesiten reutilizar los patrones de la guía Core de República Dominicana.

---

## Perfiles documentados

| Perfil | Recurso base | Descripción breve | Página de detalle |
|--------|--------------|------------------|-------------------|
| PatientDO | Patient | Perfil para pacientes con identificadores, nombre y dirección. | [PatientDO](perfil-patient.html) |
| PractitionerDO | Practitioner | Perfil para profesionales de salud con datos de identificación y especialidad. | [PractitionerDO](perfil-practitioner.html) |
| OrganizationDO | Organization | Perfil para establecimientos y unidades organizacionales. | [OrganizationDO](perfil-organization.html) |
| ConditionDO | Condition | Perfil para condiciones clínicas y diagnósticos. | [ConditionDO](perfil-condition.html) |
| AllergyIntoleranceDO | AllergyIntolerance | Perfil para alergias, intolerancias y reacciones adversas. | [AllergyIntoleranceDO](perfil-allergyintolerance.html) |
| CompositionDO | Composition | Perfil para documentos clínicos tipo IPS. | [CompositionDO](perfil-composition.html) |
| BundleDocDO | Bundle | Perfil para bundles documentales con recursos de composición y pacientes. | [BundleDocDO](perfil-bundle-doc.html) |
| BundleTransaccDO | Bundle | Perfil para bundles transaccionales basados en MHD. | [BundleTransaccDO](perfil-bundle-transaccional.html) |
| DocumentReferenceDO | DocumentReference | Perfil para referencias a documentos con metadatos y contenido. | [DocumentReferenceDO](perfil-documentreference.html) |
| ListDO | List | Perfil para listas de entrada de documentos en flujos MHD. | [ListDO](perfil-list.html) |

---

## Principios generales

Los perfiles de esta guía se orientan a:

- favorecer la interoperabilidad con HL7 FHIR R4 y con las especificaciones IPS y MHD cuando aplica;
- mantener restricciones comunes para la representación de pacientes, profesionales, organizaciones, condiciones clínicas y documentos;
- reutilizar extensiones y terminologías nacionales cuando corresponda;
- facilitar la implementación de casos de uso de salud en República Dominicana.

---

## Notas de implementación

Para utilizar un perfil de esta guía, se recomienda:

- declarar el perfil en el recurso correspondiente mediante meta.profile;
- conservar las cardinalidades y restricciones definidas en el perfil;
- emplear los recursos relacionados de forma coherente, por ejemplo PatientDO con ConditionDO o AllergyIntoleranceDO;
- validar la instancia con el conjunto de reglas del IG antes de publicar o intercambiar información.

---

## Páginas detalladas

- [Perfil PatientDO](perfil-patient.html)
- [Perfil PractitionerDO](perfil-practitioner.html)
- [Perfil OrganizationDO](perfil-organization.html)
- [Perfil ConditionDO](perfil-condition.html)
- [Perfil AllergyIntoleranceDO](perfil-allergyintolerance.html)
- [Perfil CompositionDO](perfil-composition.html)
- [Perfil BundleDocDO](perfil-bundle-doc.html)
- [Perfil BundleTransaccDO](perfil-bundle-transaccional.html)
- [Perfil DocumentReferenceDO](perfil-documentreference.html)
- [Perfil ListDO](perfil-list.html)
