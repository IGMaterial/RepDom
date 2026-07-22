# Guía Core FHIR República Dominicana

Bienvenido a la **Guía de Implementación Core FHIR de la República Dominicana**. Esta guía tiene como objetivo establecer una base común para la representación, validación e intercambio de información de salud utilizando el estándar HL7® FHIR®, facilitando la interoperabilidad entre instituciones públicas, privadas, sistemas nacionales, prestadores de servicios de salud, laboratorios, farmacias, aseguradoras y plataformas de salud digital.

La Guía Core define los perfiles, extensiones, identificadores, terminologías y reglas comunes que deben ser reutilizados por otras guías de implementación nacionales o sectoriales, tales como IPS, registro de cáncer, receta electrónica, vigilancia epidemiológica, resultados de laboratorio, referencia y contrarreferencia, entre otras.

---

### Caso de Uso

Esta guía responde al caso de uso de **normalización nacional de datos clínicos, administrativos y demográficos en FHIR**. Su propósito es ofrecer un conjunto base de artefactos interoperables que permitan representar de manera consistente pacientes, profesionales, organizaciones, establecimientos, ubicaciones, condiciones clínicas, alergias, medicamentos, observaciones y documentos clínicos.

**Objetivos principales:**

- Definir perfiles FHIR reutilizables para el ecosistema nacional de salud digital.
- Estandarizar la identificación de pacientes, profesionales, organizaciones y establecimientos.
- Establecer extensiones nacionales para datos que no están cubiertos directamente por FHIR base.
- Definir sistemas de codificación, ValueSets y CodeSystems nacionales.
- Facilitar la construcción de guías derivadas y casos de uso específicos.
- Promover validaciones sintácticas, estructurales y semánticas.
- Reducir duplicidad e inconsistencias mediante identificadores normalizados.
- Servir como base para implementaciones FHIR nacionales, institucionales y sectoriales.

---

### Alcance

Esta implementación cubre los siguientes aspectos:

- Representación base de pacientes mediante el recurso `Patient`.
- Representación de profesionales de salud mediante `Practitioner`.
- Representación de roles, especialidades y adscripciones mediante `PractitionerRole`.
- Representación de organizaciones, establecimientos y entidades de salud mediante `Organization`.
- Representación de ubicaciones físicas mediante `Location`.
- Representación de condiciones clínicas mediante `Condition`.
- Representación de alergias e intolerancias mediante `AllergyIntolerance`.
- Representación base de medicamentos mediante `Medication`.
- Representación de historial farmacológico mediante `MedicationStatement`.
- Representación de solicitudes o prescripciones mediante `MedicationRequest`.
- Representación de documentos clínicos mediante `Composition` y `Bundle`.
- Definición de extensiones nacionales.
- Definición de terminologías nacionales base.
- Consideraciones generales de seguridad, privacidad y trazabilidad.

---

### Fuera de Alcance

Esta guía no define reglas clínicas específicas para programas particulares. Los casos de uso especializados deberán definirse en guías derivadas.

Ejemplos de guías derivadas:

- Guía IPS nacional.
- Guía de Registro Nacional de Cáncer.
- Guía de receta electrónica.
- Guía de laboratorio.
- Guía de vigilancia epidemiológica.
- Guía de inmunizaciones.
- Guía de referencia y contrarreferencia.

---

### Público Objetivo

Esta guía está dirigida a:

- Desarrolladores e integradores de sistemas de información en salud.
- Arquitectos de soluciones de salud digital.
- Equipos técnicos de interoperabilidad.
- Proveedores de sistemas de historia clínica electrónica.
- Instituciones públicas y privadas del sector salud.
- Laboratorios clínicos y de anatomía patológica.
- Farmacias y servicios farmacéuticos.
- Aseguradoras y administradores de riesgos de salud.
- Equipos de gobernanza de datos, terminologías y estándares.
- Autoridades regulatorias y programas nacionales de salud.

---

### Estructura de la Guía

La guía se organiza en las siguientes secciones:

- [Inicio](index.html): Página de Inicio de la Guía.
- [Perfiles FHIR](perfiles.html): Definiciones extendidas de recursos FHIR base para el contexto nacional.
- [Extensiones](extensiones.html): Campos adicionales requeridos para representar datos nacionales.
- [Terminologías](terminologias.html): CodeSystems y ValueSets nacionales o internacionales adoptados.
- [Ejemplos](ejemplos.html): Recursos FHIR ilustrativos aplicados al contexto dominicano.
- [Flujo de Intercambio](flujo.html): Lineamientos generales para intercambio de información.
- [Seguridad](seguridad.html): Consideraciones sobre protección de datos, privacidad, consentimiento y trazabilidad.
- [Validación](validacion.html): Reglas de validación estructural y semántica.
- [Descargas](descargas.html): Paquetes, definiciones computables y artefactos de la guía.

---

### Dependencias Técnicas

Esta guía se basa en:

| Dependencia | Versión |
|------------|---------|
| HL7® FHIR® | R4 / 4.0.1 |
| HL7 Terminology | Según versión declarada en el paquete |
| FHIR Shorthand / SUSHI | Para definición de perfiles y artefactos |
| HL7 IG Publisher | Para publicación de la guía |

---

### Principios de Diseño

Esta guía adopta los siguientes principios:

- Reutilización de perfiles y artefactos oficiales HL7 cuando sea posible.
- Separación entre artefactos Core y casos de uso específicos.
- Uso de terminologías internacionales cuando existan y sean aplicables.
- Uso de catálogos nacionales para dominios administrativos locales.
- Minimización de extensiones cuando FHIR base ya cubra el requerimiento.
- Compatibilidad con validadores FHIR estándar.
- Trazabilidad de datos clínicos y administrativos.
- Protección de datos personales y sensibles de salud.

---

### Artefactos Principales

Los artefactos principales de esta guía incluyen:

| Dominio | Recurso FHIR |
|--------|--------------|
| Paciente | `Patient` |
| Profesional de salud | `Practitioner` |
| Rol profesional | `PractitionerRole` |
| Organización | `Organization` |
| Ubicación | `Location` |
| Condición clínica | `Condition` |
| Alergia / intolerancia | `AllergyIntolerance` |
| Medicamento | `Medication` |
| Historial farmacológico | `MedicationStatement` |
| Solicitud de medicamento | `MedicationRequest` |
| Documento clínico | `Composition` |
| Paquete documental | `Bundle` |

---

### Autoridades

| Nombre | Rol | Organización |
|--------|-----|--------------|
| Dr. Víctor Atallah | Ministro de Salud | [Ministerio de Salud Pública y Asistencia Social](https://www.msp.gob.do) |
| Lcda. Yudelka Batista | Viceministra de Fortalecimiento y Desarrollo del Sector Salud | [Ministerio de Salud Pública y Asistencia Social](https://www.msp.gob.do) |
| Ing. Santiago Burgos | Director de Tecnología de la Información y Comunicación | [Ministerio de Salud Pública y Asistencia Social](https://www.msp.gob.do) |
| Ing. Luis Ceballo | Director de Gestión de la Información y Estadísticas de Salud | [Ministerio de Salud Pública y Asistencia Social](https://www.msp.gob.do) |

---

### Autores y Colaboradores

#### MISPAS
- [Ing. Joel Tavarez](https://linkedin.com/in/joeltavarezestevez "Perfil de LinkedIn de Joel Tavarez") – Encargado del Departamento de Desarrollo e Implementación de Sistemas.
- [Lic. David Threan](https://www.linkedin.com/in/davidthrean/ "Perfil de LinkedIn de David Threan") – Encargado de Producción de Servicios de Salud.

#### SNS
- Ing. Nicki Castillo – Encargado de Operaciones TIC.
- Ing. Iván Lora – Encargado de Desarrollo e Implementación de Sistemas.
- Ing. Edwin Ramírez – Director de Gestión de la Información y Estadísticas en Salud.

- Equipos técnicos y funcionales del Ministerio de Salud Pública y Asistencia Social y del Servicio Nacional de Salud.

---

### Licencia

Este trabajo se publica bajo licencia [CC BY-NC-SA 4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/) y se encuentra en proceso de revisión técnica, institucional y comunitaria.

---


## Convenciones

Todos los perfiles nacionales usan el sufijo `DO` y se publican bajo la URL Canónica:

```text
https://digital.msp.gob.do/fhir/core
```

¿Tienes preguntas o deseas colaborar? Contacta al equipo técnico responsable de interoperabilidad FHIR del Ministerio de Salud Pública y Asistencia Social.
