# Descargas

Esta sección contiene los artefactos descargables generados por la Guía Core FHIR República Dominicana.

Los archivos se generan automáticamente durante el proceso de publicación con HL7 IG Publisher.

---

### Paquete NPM FHIR

El paquete computable de la guía se publica como paquete FHIR NPM.

Archivo esperado:

```text
package.tgz
```

Este paquete contiene los perfiles, extensiones, CodeSystems, ValueSets, ejemplos y demás recursos computables de la guía.

---

### Definiciones Computables

| Artefacto | Descripción |
|----------|-------------|
| `package.tgz` | Paquete FHIR NPM de la guía. |
| `definitions.json.zip` | Definiciones computables en JSON. |
| `definitions.xml.zip` | Definiciones computables en XML. |
| `examples.json.zip` | Ejemplos en formato JSON. |
| `examples.xml.zip` | Ejemplos en formato XML. |
| `qa.html` | Reporte de calidad de la publicación. |
| `qa.json` | Resultado de validación en formato JSON. |

---

### Uso del Paquete

```bash
java -jar validator_cli.jar recurso.json \
  -version 4.0.1 \
  -ig package.tgz
```

---

### Publicación

El contenido completo de la carpeta `output/` puede ser publicado en un servidor web estático.

```text
output/index.html
```

---

### Nota

Si alguno de los archivos listados no aparece, revise el resultado de publicación en `qa.html` y confirme que el proceso de generación haya finalizado correctamente.
