Extension: TDDUIHouseholdSituation
Id: tddui-household-situation
Title: "TDDUI Household Situation"
Description: "Extension complexe regroupant la situation familiale, la composition du foyer et sa description textuelle de l'usager."
Context: Patient
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open

* extension contains
    familySituation 0..1 and
    householdComposition 0..* and
    householdCompositionDescription 0..1

* extension[familySituation] ^short = "Situation familiale de l'usager"
* extension[familySituation].valueCodeableConcept from $JDV-J176-SituationVieQuotidienne-MDPH (required)

* extension[householdComposition] ^short = "Composition du foyer"
* extension[householdComposition].valueCodeableConcept from $JDV-J385-composition-foyer-ms (required)

* extension[householdCompositionDescription] ^short = "Description de la composition du foyer"
* extension[householdCompositionDescription].value[x] only string
