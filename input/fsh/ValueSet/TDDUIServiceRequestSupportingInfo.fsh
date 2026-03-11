ValueSet: TDDUIServiceRequestSupportingInfo
Id: tddui-servicerequest-supportinginfo
Title: "TDDUI ServiceRequest SupportingInfo"
Description: "ValueSet définissant les types de notes pour l'élément Goal.note."
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^experimental = false

* include codes from valueset TDDUIDiscriminator

* exclude TDDUIDiscriminator#accordUsager
* exclude TDDUIDiscriminator#accordStructure

* exclude TDDUIDiscriminator#titreObjectif
* exclude TDDUIDiscriminator#avisUsagerObjectif
* exclude TDDUIDiscriminator#strategieMiseEnOeuvreObjectif

* exclude TDDUIDiscriminator#origineAttente
* exclude TDDUIDiscriminator#commentaireAttente
