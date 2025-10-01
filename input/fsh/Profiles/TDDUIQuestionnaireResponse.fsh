Profile: TDDUIQuestionnaireResponse
Parent: QuestionnaireResponse
Id: tddui-questionnaire-response
Title: "TDDUI QuestionnaireResponse"
Description: "Profil de la ressource QuestionnaireResponse utilisé pour transmettre les réponses aux questionnaires dans le cadre des évaluations." 

* identifier 1..1

* questionnaire ^short = """
Le profil permet de communiquer les grilles définies suivantes :
- Evaluation AGGIR PA SSIAD
- Evaluation AGGIR PH SSIAD
- Evaluation SERAFIN
- Evaluation situation SSIAD
"""

* questionnaire 1..1

* subject 1..1
* subject only Reference(TDDUIPatient or TDDUIPatientINS)

* author only Reference(TDDUIPractitioner)

* source only Reference(TDDUIPractitioner)

* extension contains
    TDDUIResponsible named TDDUIResponsible 0..1 and 
    TDDUIAttachment named TDDUIAttachment 0..*

* encounter 0..1
* encounter only Reference(TDDUIEncounterEvenement)

* status.extension contains
    TDDUICancelReason named TDDUICancelReason 0..1

Mapping:  ConceptMetier_TDDUIQuestionnaireResponse
Source:   TDDUIQuestionnaireResponse
Target: "https://interop.esante.gouv.fr/ig/fhir/tddui/sfe_modelisation_contenu.html"
Id:       specmetier-to-TDDUIQuestionnaireResponse
Title:    "Evaluation"
* -> "Evaluation"

* identifier -> "idEvaluation"
* authored -> "dateEvaluation"
* subject -> "Usager"
* encounter -> "Evenement"
* extension[TDDUIAttachment] -> "pieceJointeEvaluation"
* extension[TDDUIResponsible] -> "Responsable"
* author -> "Auteur"
* source -> "Evaluateur"
* status.extension[TDDUICancelReason] -> "Statut.motifNonRealisation"
* meta.lastUpdated -> "Statut.dateStatut"
* item.answer.valueCoding -> "resultatEvaluation"
* item.text -> "commentaireEvaluation"
* item.item -> "«premier niveau»DetailEvaluation"
* item.item.answer -> "resultatChampsEvalue"
* item.item.text -> "commentaire"
* item.item.item -> "«deuxième niveau»DetailEvaluation"
* item.item.item.answer -> "resultatChampsEvalue"
* item.item.item.text -> "commentaire"
