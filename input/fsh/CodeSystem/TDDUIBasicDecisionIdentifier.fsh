CodeSystem: TDDUIBasicDecisionIdentifier
Id: tddui-basic-decision-identifier
Title: "TDDUI Basic Decision Identifier"
Description: "CodeSystem pour la définition des codes d'identifiant de la décision de la CDAPH"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"

* ^caseSensitive = true
* ^content = #complete
* ^experimental = false

* #IDDECISION "Identifiant principal de la décision"
* #NUMENREG "Numéro d'enregistrement de la décision"
* #IDNATDECISION "Identifiant national de la décision"
* #NUMALLOC "Numéro d'allocataire"
