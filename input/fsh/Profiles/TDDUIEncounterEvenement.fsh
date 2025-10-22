Profile: TDDUIEncounterEvenement
Parent: Encounter
Id: tddui-encounter-evenement
Title: "TDDUI Encounter Evenement"
Description: "Profil de la ressource Encounter permettant de regrouper les évènements liés à la prise en charge de l’usager dans une structure ESSMS."

* ^purpose = """
    > **Note** : Le profil TDDUIEncounterEvenement n'hérite pas du profil FRCoreEncounterProfile à cause de l'interdiction de véhiculer plusieurs types d'évènements. Cependant, le profil TDDUIEncounterEvenement suit les contraintes du profil FRCoreEncounterProfile excepté la contrainte sur la cardinalité de l'élément type (0..1).
  """

* insert FRCoreEncounterProfile

* identifier 1..1
* identifier ^short = "Identifiant de l'évènement"
* identifier.value ^example[0].label = "du format d'identifiant à respecter : 3+FINESS/identifiantLocalUsagerESSMS-EVN-numEvenement"
* identifier.value ^example[0].valueIdentifier.value = "3480787529/147720425367411-EVN-12548"
* identifier.system = "https://identifiant-medicosocial-evenement.esante.gouv.fr"

* status ^short = "Correspondance des statuts métier avec les codes FHIR : Planifié → planned, Validé → triaged, Réalisé → finished, Annulé → cancelled."

* status.extension contains 
    TDDUIEventCancelReason named TDDUIEventCancelReason 0..1

// Types d'évènement
* type ^slicing.discriminator.type = #pattern
* type ^slicing.discriminator.path = "coding.system"
* type ^slicing.rules = #open

* type contains
    ssiad 0..* and
    serafin 0..* and
    text 0..*

* type[ssiad].coding 1..1
* type[ssiad].coding.code 1..1
* type[ssiad].coding.code from $JDV-TypeEvenement-SSIAD-CISIS
* type[ssiad].coding.system 1..1
* type[ssiad].coding.system = "https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis"
* type[ssiad] ^short = "Type d'évènement SSIAD."

* type[serafin].coding 1..1
* type[serafin].coding.code 1..1
* type[serafin].coding.code from TDDUISerafinValueSet
* type[serafin].coding.system 1..1
* type[serafin].coding.system = "https://smt.esante.gouv.fr/terminologie-SERAFINPH"
* type[serafin] ^short = "Type d'évènement Serafin correspondant aux familles 2-PrestationDirecte et 3-PrestationIndirecte."

* type[text].coding.code 0..1
* type[text].coding.code = #not-permitted
* type[text].coding.display = "Not Permitted"
* type[text].coding.system 1..1
* type[text].coding.system = "http://terminology.hl7.org/CodeSystem/data-absent-reason"
* type[text].text 1..1
* type[text] ^short = "Texte non structuré véhiculant les autres types d’évènements."

// Usager
* subject 1..1
* subject only Reference(TDDUIPatient or TDDUIPatientINS or Group)

// ESSMS
* serviceProvider only Reference(TDDUIOrganization)

* participant ^slicing.discriminator.type = #pattern
* participant ^slicing.discriminator.path = "type"
* participant ^slicing.rules = #open

* participant contains
    auteurStatut 0..1 and
    professionnel 0..*

* participant[auteurStatut].type 1..1
* participant[auteurStatut].type = TDDUIEncounterParticipant#AUT "Auteur du statut de la ressource"
* participant[auteurStatut] ^short = "Professionnel ayant effectué la dernière modification du statut associé à la ressource."

* participant[professionnel].type 1..1
* participant[professionnel].type = $ParticipationType#PART

* participant.individual only Reference(TDDUIPractitioner or TDDUIPractitionerRole or RelatedPerson)

* location 0..1

* extension contains
    TDDUIRessourcesUsed named TDDUIRessourcesUsed 0..* and
    TDDUIEventLabel named TDDUIEventLabel 0..1 and
    TDDUIComment named TDDUIComment 0..* and
    TDDUIEventReport named TDDUIEventReport 0..1 and
    TDDUIAttachment named TDDUIAttachment 0..* and
    TDDUIEventOutsideService named TDDUIEventOutsideService 0..1  and
    TDDUIEventReason named TDDUIEventReason 0..1  and
    TDDUIPatientPresent named TDDUIPatientPresent 0..1  and
    TDDUIMeal named TDDUIMeal 0..1

* extension[TDDUIRessourcesUsed] ^short = "Ressources utilisées lors de l’évènement."
* obeys MatDetailOnlyIfTypeOrg206
* obeys FacilityOnlyIfTypeOrg207
* extension[TDDUIEventLabel] ^short = "Titre donné à l’évènement par la structure."
* extension[TDDUIComment] ^short = "Commentaires sur le déroulé de l'évènement."
* extension[TDDUIEventReport] ^short = "Zone de texte liée à l’événement pour compte rendu des actions réalisées."
* extension[TDDUIAttachment] ^short = "Pièces jointes liées à l’événement."
* extension[TDDUIEventOutsideService] ^short = "Evénement hors prestation prévue dans le projet personnalisé de l’usager."
* extension[TDDUIEventReason] ^short = "Contexte justifiant la réalisation de l’évènement."
* extension[TDDUIPatientPresent] ^short = "Evènement nécessitant ou non la présence physique de l’usager."
* extension[TDDUIMeal] ^short = "Repas du professionnel prévu dans le cadre de l'événement."

* partOf only Reference(TDDUIEncounterSejour)
* period.start 1..1
* period.end 1..1

Mapping:  ConceptMetier_TDDUIEncounterEvenement
Source:   TDDUIEncounterEvenement
Target: "https://interop.esante.gouv.fr/ig/fhir/tddui/sfe_modelisation_contenu.html"
Id:       specmetier-to-TDDUIEncounterEvenement
Title:    "Modèle de contenu DUI"
* -> "Événement"

* identifier -> "idEvenement"
* type -> "typeEvenement"
* subject -> "Usager"
* serviceProvider -> "structureEnCharge"
* participant[professionnel] -> "Professionnel"
* location -> "lieuEvenement"
* extension[TDDUIRessourcesUsed] -> "RessourceUtilisee"
* extension[TDDUIRessourcesUsed].extension[TDDUIRessourceType] -> "typeRessourceUtilisee"
* extension[TDDUIRessourcesUsed].extension[TDDUIMaterialDetail] -> "detailTypeRessourceUtilisee"
* extension[TDDUIRessourcesUsed].extension[TDDUIFacilityResource] -> "detailTypeRessourceUtilisee"
* extension[TDDUIEventLabel] -> "libelleEvenement"
* extension[TDDUIComment] -> "commentaireEvenement"
* extension[TDDUIEventReport] -> "compteRenduEvenement"
* extension[TDDUIAttachment] -> "pieceJointeEvenement"
* extension[TDDUIEventOutsideService] -> "evenementHorsPrestation"
* extension[TDDUIEventReason] -> "motifEvenement"
* extension[TDDUIPatientPresent] -> "usagerPresent"
* extension[TDDUIMeal] -> "repas"
* partOf -> "sejour"
* period.start -> "dateDebutEvenement"
* period.end -> "dateFinEvenement"
* meta.lastUpdated -> "dateModificationEvenement, Statut.dateStatut"
* status -> "Statut.statut"
* participant[auteurStatut] -> "Statut.auteur"
* status.extension[tddui-event-cancel-reason] -> "Statut.motifNonRealisation"

Invariant: MatDetailOnlyIfTypeOrg206
Description: "Le slice TDDUIMaterialDetail est utilisé uniquement lorsque le slice TDDUIRessourceType prend la valeur ORG-206."
Severity: #error
Expression: "(Encounter.extension.where(url='https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-ressources-used').extension.where(url='TDDUIMaterialDetail').exists())
    implies(Encounter.extension.where(url='https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-ressources-used').extension.where(url='TDDUIRessourceType').exists()
    and(Encounter.extension.where(url='https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-ressources-used').extension.where(url='TDDUIRessourceType').value.coding.code='ORG-206'))"

Invariant: FacilityOnlyIfTypeOrg207
Description: "Le slice TDDUIFacilityResource est utilisé uniquement lorsque le slice TDDUIRessourceType prend la valeur ORG-207."
Severity: #error
Expression: "(Encounter.extension.where(url='https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-ressources-used').extension.where(url='TDDUIFacilityResource').exists())
    implies(Encounter.extension.where(url='https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-ressources-used').extension.where(url='TDDUIRessourceType').exists()
    and(Encounter.extension.where(url='https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-ressources-used').extension.where(url='TDDUIRessourceType').value.coding.code='ORG-207'))"
