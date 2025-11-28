Instance: tddui-goal-objectif-2-ime-example
InstanceOf: TDDUIGoalObjectif
Usage: #example
Description: "Exemple d'un objectif dans le cadre du projet personnalisé en IME."

* identifier.value = "3480787529/123456-OBJE-1235"
* identifier.system = "https://identifiant-medicosocial-objectif.esante.gouv.fr"

* lifecycleStatus = #active

* description.text = "Atteindre le niveau lecteur débutant (décodage syllabique) en 9 mois."

* subject = Reference(tddui-patient-pp-ime-example)

* extension[referenceProjetPerso].valueReference = Reference(tddui-careplan-projet-personnalise-ime-example)

* note[titreObjectif].text = "Objectif 2"
* note[titreObjectif].extension[TDDUIGoalNoteExtension].valueCode = #titreObjectif