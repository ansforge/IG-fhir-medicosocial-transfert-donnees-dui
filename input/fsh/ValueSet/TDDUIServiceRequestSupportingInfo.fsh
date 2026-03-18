ValueSet: TDDUIServiceRequestSupportingInfo
Id: tddui-servicerequest-supportinginfo
Title: "TDDUI ServiceRequest SupportingInfo"
Description: "ValueSet définissant les types d'objet binaire de la demande d'orientation."
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
