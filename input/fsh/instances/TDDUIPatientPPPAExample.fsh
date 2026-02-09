Instance: tddui-pp-pa-patient-example-pp
InstanceOf: TDDUIPatient
Title: "TDDUI PP PA Patient Example"
Description: "Exemple de la ressource TDDUIPatient dans le cadre d'un projet personnalisé PA"
Usage: #example

* identifier[PI].system = "https://identifiant-medicosocial-localusager.esante.gouv.fr"
* identifier[PI].value = "3480787529/123456789"

* name[officialName].use = #official
* name[officialName].family = "L."
* name[officialName].given = "Jeanne"

* gender = #female
