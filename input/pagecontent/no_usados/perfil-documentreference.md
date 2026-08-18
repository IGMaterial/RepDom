# Perfil DocumentReferenceDO

Este perfil define la representación de referencias a documentos clínicos dentro de la guía.

## Propósito

Permite describir metadatos de un documento, su estado, tipo, fecha de creación, paciente custodio y ubicación del contenido.

## Restricciones principales

- El tipo, la fecha y el estado del documento son obligatorios.
- El recurso debe referenciar al paciente mediante subject.
- El custodio debe ser una organización compatible con OrganizationDO.
- El contenido debe incluir una referencia de ubicación del documento.

## Uso recomendado

Se emplea en flujos MHD y de intercambio documental para indicar qué documento existe y dónde está disponible.
