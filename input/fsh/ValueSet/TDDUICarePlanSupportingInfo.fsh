ValueSet: TDDUICarePlanSupportingInfo
Id: tddui-care-plan-supportingInfo
Title: "TDDUI CarePlan supportingInfo"
Description: "ValueSet définissant les types de notes pour l'élément CarePlan.supportingInfo."
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^experimental = false

* include codes from valueset TDDUIDiscriminator

* exclude TDDUIDiscriminator#titreObjectif
* exclude TDDUIDiscriminator#avisUsagerObjectif
* exclude TDDUIDiscriminator#strategieMiseEnOeuvreObjectif

* exclude TDDUIDiscriminator#origineAttente
* exclude TDDUIDiscriminator#commentaireAttente
