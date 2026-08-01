Instance: AspirinaMedicacionEjemploAR
InstanceOf: Medication
Usage: #example
Title: "Medication - Aspirina 500 mg"
Description: "Ejemplo de medicamento: Aspirina presentación tableta 500 mg. Analgésico y antiinflamatorio de uso común en Argentina."

* code.coding.system = "http://snomed.info/sct"
* code.coding.code = #108774000
* code.coding.display = "Aspirina 500 mg tableta"

* status = #active

* form.coding.system = "http://snomed.info/sct"
* form.coding.code = #385055001
* form.coding.display = "Tableta"

* ingredient.itemCodeableConcept.coding.system = "http://snomed.info/sct"
* ingredient.itemCodeableConcept.coding.code = #372587001
* ingredient.itemCodeableConcept.coding.display = "Ácido acetilsalicílico"

* ingredient.strength.numerator.value = 500
* ingredient.strength.numerator.unit = "mg"
* ingredient.strength.denominator.value = 1
* ingredient.strength.denominator.unit = "tableta"
