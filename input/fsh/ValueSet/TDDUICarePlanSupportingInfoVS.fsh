ValueSet: TDDUICarePlanSupportingInfoVS
Id: tddui-care-plan-supportingInfo-vs
Title: "TDDUI CarePlan supportingInfo ValueSet"
Description: "ValueSet définissant les types de notes pour l'élément CarePlan.supportingInfo."
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^experimental = false

* include codes from valueset TDDUIDiscriminatorVS

* exclude TDDUIDiscriminatorCS#titreObjectif
* exclude TDDUIDiscriminatorCS#avisUsagerObjectif
* exclude TDDUIDiscriminatorCS#strategieMiseEnOeuvreObjectif

* exclude TDDUIDiscriminatorCS#origineAttente
* exclude TDDUIDiscriminatorCS#commentaireAttente
