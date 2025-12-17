Instance: tddui-pp-ime-goal-objectif-2-example
InstanceOf: TDDUIGoalObjectif
Usage: #example
Description: "Exemple d'un objectif dans le cadre du projet personnalisé en IME."

* identifier.value = "3480787529/123456-OBJE-1235"
* identifier.system = "https://identifiant-medicosocial-objectif.esante.gouv.fr"

* lifecycleStatus = #active

* description.text = "Atteindre le niveau lecteur débutant (décodage syllabique) en 9 mois."

* subject = Reference(tddui-pp-ime-patient-example)

* extension[referenceProjetPerso].valueReference = Reference(tddui-pp-ime-careplan-example)

* note[titreObjectif].text = "Objectif 2"
* note[titreObjectif].extension[TDDUIDiscriminator].valueCodeableConcept.coding.code = #titreObjectif
