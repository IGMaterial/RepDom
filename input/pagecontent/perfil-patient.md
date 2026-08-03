# Perfil PatientDO

Este perfil define una representación base para pacientes en la guía Core de República Dominicana, basada en el perfil IPS de paciente.

## Propósito

Permite describir pacientes con los datos mínimos necesarios para interoperabilidad clínica y administrativa, incluyendo identificadores, nombre, contacto y domicilio.

## Restricciones principales

- El recurso debe incluir al menos un identificador.
- El sistema y el valor del identificador son obligatorios.
- El nombre del paciente es obligatorio.
- Se permite la extensión de segundo apellido mediante la extensión nacional correspondiente.

## Uso recomendado

Este perfil se utiliza como referencia para recursos Patient asociados a condiciones clínicas, alergias, documentos y otros recursos relacionados.
