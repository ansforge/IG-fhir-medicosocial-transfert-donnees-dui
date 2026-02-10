Extension: TDDUIQRParticipant
Id: tddui-qr-participant
Title: "TDDUI QR Participant"
Description: "Extension permettant d'ajouter le responsable de l'évaluation et l'auteur du statut de l'évaluation dans un QuestionnaireResponse."
Context: QuestionnaireResponse
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open

* extension contains
    TDDUIResponsible 0..1 and
    TDDUIPorteur 0..1

* extension[TDDUIResponsible].value[x] only Reference
* extension[TDDUIResponsible].valueReference only Reference(TDDUIPractitioner)
* extension[TDDUIResponsible] ^short = "Responsable de l'évaluation."

* extension[TDDUIPorteur].value[x] only Reference
* extension[TDDUIPorteur].valueReference only Reference(TDDUIOrganization)
* extension[TDDUIPorteur] ^short = "Personne morale porteuse de l'évaluation de l'usager."
