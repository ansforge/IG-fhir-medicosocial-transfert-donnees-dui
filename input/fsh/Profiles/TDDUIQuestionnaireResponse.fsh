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

* status ^short = "Correspondance des statuts métier avec les codes FHIR : TERMINE -> in-progress, APPROUVE -> completed, VALIDE -> amended."

* questionnaire 1..1

* subject 1..1
* subject only Reference(TDDUIPatient or TDDUIPatientINS)

* author only Reference(TDDUIPractitioner)

* source only Reference(TDDUIPractitioner)

* extension contains
    TDDUIQRParticipant named TDDUIQRParticipant 0..1 and 
    TDDUIAttachment named TDDUIAttachment 0..* and
    TDDUIComment named TDDUIComment 0..1

* encounter 0..1
* encounter only Reference(TDDUIEncounterEvenement)

* item 1..*
* item.extension contains TDDUIComment named TDDUIComment 0..1
* item.item.extension contains TDDUIComment named TDDUIComment 0..1
* item.item.item.extension contains TDDUIComment named TDDUIComment 0..1

Mapping:  ConceptMetier_TDDUIQuestionnaireResponseAGGIR
Source:   TDDUIQuestionnaireResponse
Target: "https://interop.esante.gouv.fr/ig/fhir/tddui/sfe_modelisation_contenu.html"
Id:       specmetier-to-TDDUIQuestionnaireResponseAGGIR
Title:    "EvaluationAGGIR"
* -> "EvaluationAGGIR"

* identifier -> "idEvaluation"
* authored -> "dateEvaluation"
* status -> "Statut.statut"
* extension[TDDUIQRParticipant].extension[TDDUIStatusAuthor] -> "Statut.auteur"
* extension[TDDUIComment] -> "commentaireEvaluation"
* questionnaire -> "typeEvaluation"
* subject -> "Usager"
* encounter -> "Evenement"
* extension[TDDUIAttachment] -> "pieceJointeEvaluation"
* extension[TDDUIQRParticipant].extension[TDDUIResponsible] -> "Responsable"
* author -> "Auteur"
* source -> "Evaluateur"
* meta.lastUpdated -> "Statut.dateStatut"
* item.answer.valueCoding -> "resultatEvaluation"
* item.item -> "«premier niveau»DetailEvaluation"
* item.item.linkId -> "champsEvalue"
* item.item.answer -> "resultatChampsEvalue"
* item.item.extension[TDDUIComment] -> "commentaire"
* item.item.item -> "«deuxième niveau»DetailEvaluation"
* item.item.item.linkId -> "champsEvalue"
* item.item.item.answer -> "resultatChampsEvalue"
* item.item.item.extension[TDDUIComment] -> "commentaire"

Mapping:  ConceptMetier_TDDUIQuestionnaireResponseSerafinSSIAD
Source:   TDDUIQuestionnaireResponse
Target: "https://interop.esante.gouv.fr/ig/fhir/tddui/sfe_modelisation_contenu.html"
Id:       specmetier-to-TDDUIQuestionnaireResponseSerafinSSIAD
Title:    "EvaluationSERAFIN/SSIAD"
* -> "EvaluationSERAFIN/SSIAD"

* identifier -> "idEvaluation"
* authored -> "dateEvaluation"
* status -> "Statut.statut"
* extension[TDDUIQRParticipant].extension[TDDUIStatusAuthor] -> "Statut.auteur"
* extension[TDDUIComment] -> "commentaireEvaluation"
* questionnaire -> "typeEvaluation"
* subject -> "Usager"
* encounter -> "Evenement"
* extension[TDDUIAttachment] -> "pieceJointeEvaluation"
* extension[TDDUIQRParticipant].extension[TDDUIResponsible] -> "Responsable"
* author -> "Auteur"
* source -> "Evaluateur"
* meta.lastUpdated -> "Statut.dateStatut"
* item.extension[TDDUIComment] -> "commentaire"
* item -> "«premier niveau»DetailEvaluation"
* item.linkId -> "champsEvalue"
* item.answer -> "resultatChampsEvalue"
