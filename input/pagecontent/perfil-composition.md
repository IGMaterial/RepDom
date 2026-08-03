# Perfil CompositionDO

Este perfil representa documentos clínicos en formato FHIR y está orientado a escenarios IPS.

## Propósito

Permite estructurar un documento clínico con información sobre paciente, autor, fecha, título y custodio.

## Restricciones principales

- El estado, el tipo, el sujeto, la fecha y el título son obligatorios.
- El sujeto debe referenciar un PatientDO.
- El autor puede referenciar un PractitionerDO u OrganizationDO.
- El custodio debe referenciar una OrganizationDO.

## Uso recomendado

Se emplea para documentos clínicos que deben intercambiarse como parte de la información del paciente en la guía.
