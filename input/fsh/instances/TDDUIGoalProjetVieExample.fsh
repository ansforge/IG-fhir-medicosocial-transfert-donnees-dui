Instance: tddui-goal-projet-vie-example
InstanceOf: TDDUIGoalProjetVie
Title: "TDDUI Goal ProjetVie Example"
Description: "Exemple du projet de vie d'un usager."
Usage: #example

* identifier.value = "3480787529/123456789-PDV-1234"
* identifier.system = "https://identifiant-medicosocial-projetvie.esante.gouv.fr"

* lifecycleStatus = #active

* description.text = "Projet de vie de Mr. Dupont"

* subject = Reference(tddui-patient-ins-example)

* startDate = "2024-01-01"

* target.measure.extension[DataAbsentReason].valueCode = #not-permitted

* target.detailString = "Permettre à Monsieur Dupont de maintenir sa vie à domicile le plus longtemps possible."

* target.dueDate = "2025-01-01"
