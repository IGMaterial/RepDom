# Perfil BundleTransaccDO

Este perfil representa un bundle transaccional para intercambio de documentos en el marco de MHD.

## Propósito

Permite estructurar un conjunto de recursos relacionados en un mecanismo de transacción, incluyendo paciente, referencia documental, lista de envío y documento FHIR.

## Restricciones principales

- Se exige que el bundle incluya las entradas mínimas requeridas para la transacción.
- Cada entrada debe referenciar un recurso compatible con los perfiles definidos en la guía.
- Está orientado a interoperabilidad con perfiles IHE MHD.

## Uso recomendado

Se usa en escenarios de provisión y transporte de documentos entre sistemas de información en salud.
