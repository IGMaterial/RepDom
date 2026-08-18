# Perfil ListDO

Este perfil define una lista de entrada para la gestión de documentos en flujos de intercambio MHD.

## Propósito

Permite agrupar referencias a documentos relacionados con un paciente y un contexto de trabajo específico.

## Restricciones principales

- La lista debe referenciar al paciente asociado.
- Los elementos de la lista deben ser referencias a DocumentReferenceDO.
- Se usa como apoyo para la organización de documentos dentro de un bundle de transacción.

## Uso recomendado

Se utiliza en escenarios de provisionado de documentos y manejo de sets de envío o agrupación documental.
