Extension: TDDUIQRParticipant
Id: tddui-qr-participant
Title: "TDDUI QR Participant"
Description: "Extension permettant d'ajouter le responsable et le porteur de l'évaluation dans un QuestionnaireResponse."
Context: QuestionnaireResponse
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open

* extension contains
    TDDUIResponsible 0..1 and
    TDDUIHolder 0..1

* extension[TDDUIResponsible].value[x] only Reference
* extension[TDDUIResponsible].valueReference only Reference(TDDUIPractitioner)
* extension[TDDUIResponsible] ^short = "Responsable de l'évaluation."

* extension[TDDUIHolder].value[x] only Reference
* extension[TDDUIHolder].valueReference only Reference(TDDUIOrganization)
* extension[TDDUIHolder] ^short = "Personne morale porteuse de l'évaluation de l'usager."
