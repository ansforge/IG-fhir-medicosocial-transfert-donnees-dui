Extension: TDDUIQRParticipant
Id: tddui-qr-participant
Title: "Responsable et auteur du statut de l'évaluation"
Description: "Extension permettant d'ajouter le responsable de l'évaluation et l'auteur du statut de l'évaluation dans un QuestionnaireResponse."
Context: QuestionnaireResponse
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open

* extension contains
    TDDUIResponsible 0..1 and
    TDDUIStatusAuthor 0..1

* extension[TDDUIResponsible].value[x] only Reference
* extension[TDDUIResponsible].valueReference only Reference(TDDUIPractitioner)
* extension[TDDUIResponsible] ^short = "Responsable de l'évaluation."

* extension[TDDUIStatusAuthor].value[x] only Reference
* extension[TDDUIStatusAuthor].valueReference only Reference(TDDUIPractitioner)
* extension[TDDUIStatusAuthor] ^short = "Auteur du statut de l'évaluation."
