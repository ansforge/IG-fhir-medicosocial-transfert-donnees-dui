Instance: tddui-pp-ime-patient-example
InstanceOf: TDDUIPatient
Title: "TDDUI PP IME Patient Example"
Description: "Exemple de la ressource TDDUIPatient dans le cadre d'un projet personnalisé en IME"
Usage: #example

* identifier[PI].system = "https://identifiant-medicosocial-localusager.esante.gouv.fr"
* identifier[PI].value = "3480787529/123456"

* name[officialName].use = #official
* name[officialName].given = "Hugo"
* name[officialName].family = "D."
