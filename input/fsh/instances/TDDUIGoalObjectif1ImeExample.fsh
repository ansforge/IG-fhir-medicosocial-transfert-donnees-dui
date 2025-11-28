Instance: tddui-goal-objectif-1-ime-example
InstanceOf: TDDUIGoalObjectif
Usage: #example
Description: "Exemple d'un objectif dans le cadre du projet personnalisé en IME."

* identifier.value = "3480787529/123456-OBJE-1234"
* identifier.system = "https://identifiant-medicosocial-objectif.esante.gouv.fr"

* lifecycleStatus = #active

* description.text = "Tolérer 20 min de cour avec casque anti‑bruit en 4 mois."

* subject = Reference(tddui-patient-pp-ime-example)

* extension[referenceProjetPerso].valueReference = Reference(tddui-careplan-projet-personnalise-ime-example)

* note[titreObjectif].text = "Objectif 1"
* note[titreObjectif].extension[TDDUIGoalNoteExtension].valueCode = #titreObjectif