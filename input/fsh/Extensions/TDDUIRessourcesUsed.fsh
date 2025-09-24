Extension: TDDUIRessourcesUsed
Id: tddui-ressources-used
Title: "Ressources utilisées"
Description: "Ressources utilisées lors de l’évènement."
Context: Encounter

* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open

* extension contains
    TDDUIRessourceType 0..1 and
    TDDUIMaterialDetail 0..* and
    TDDUIFacilityResource 0..*

* extension[TDDUIRessourceType].value[x] only CodeableConcept
* extension[TDDUIRessourceType].valueCodeableConcept from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-ressource-utilisee-cisis
* extension[TDDUIRessourceType] ^short = "Type de ressources utilisées dans le cadre de l’évènement (matériel, immobilier, véhicule)."

* extension[TDDUIMaterialDetail].value[x] only CodeableConcept
* extension[TDDUIMaterialDetail].valueCodeableConcept from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-detail-materiel-specialise-cisis
* extension[TDDUIMaterialDetail] ^short = "Détail des ressources matérielles (ex: matériel médical, pédagogique)"
* extension[TDDUIMaterialDetail] obeys MatDetailOnlyIfTypeOrg206

* extension[TDDUIFacilityResource].value[x] only CodeableConcept
* extension[TDDUIFacilityResource].valueCodeableConcept from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-detail-ressource-immobiliere-utilisee-cisis
* extension[TDDUIFacilityResource] ^short = "Détail des ressources immobilières (ex: bâtiment, salle, chambre)"
* extension[TDDUIFacilityResource] obeys FacilityOnlyIfTypeOrg207

Invariant: MatDetailOnlyIfTypeOrg206
Description: "TDDUIMaterialDetail ne doit être utilisé que si TDDUIRessourceType vaut ORG-206 ou n'est pas renseigné."
Severity: #error
Expression: "(extension('TDDUIMaterialDetail').exists() = (extension('TDDUIRessourceType').empty() or extension('TDDUIRessourceType').value.coding.code = 'ORG-206'))"

Invariant: FacilityOnlyIfTypeOrg207
Description: "TDDUIFacilityResource ne doit être utilisé que si TDDUIRessourceType vaut ORG-207 ou n'est pas renseigné."
Severity: #error
Expression: "(extension('TDDUIFacilityResource').exists() = (extension('TDDUIRessourceType').empty() or extension('TDDUIRessourceType').value.coding.code = 'ORG-207'))"
