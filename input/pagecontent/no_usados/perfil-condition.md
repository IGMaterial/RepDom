# Perfil ConditionDO

Este perfil define la representación de condiciones clínicas, diagnósticos y problemas de salud.

## Propósito

Facilita el registro de condiciones clínicas con información sobre estado clínico, verificación, severidad y código diagnóstico.

## Restricciones principales

- El recurso debe vincularse a un paciente mediante subject.
- El código de la condición es obligatorio.
- Se recomienda usar el ValueSet de condiciones clínicas definido en la guía.
- Se permite registrar información sobre el episodio clínico, fecha de inicio y observaciones.

## Uso recomendado

Se emplea para representar diagnósticos, problemas activos, antecedentes clínicos y otros estados de salud relacionados con el paciente.
