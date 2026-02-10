Profile: TDDUIQuestionnaireResponse
Parent: QuestionnaireResponse
Id: tddui-questionnaire-response
Title: "TDDUI QuestionnaireResponse"
Description: "Profil de la ressource QuestionnaireResponse utilisé pour transmettre les réponses aux questionnaires dans le cadre des évaluations."

* obeys auto-eval-porteur
* obeys professionnel-requis

* identifier 1..1
* identifier ^short = "Identifiant de l'évaluation"
* identifier.value 1..1
* identifier.value ^example[0].label = "du format d'identifiant à respecter : 3+FINESS/identifiantLocalUsagerESSMS-EVAL-numEvaluation"
* identifier.value ^example[0].valueString = "3480787529/147720425367411-EVAL-21564655"
* identifier.system 1..1
* identifier.system = "https://identifiant-medicosocial-evaluation.esante.gouv.fr"

* questionnaire ^short = """
Le profil permet de communiquer les grilles définies suivantes :
- Evaluation AGGIR PA SSIAD
- Evaluation AGGIR PH SSIAD
- Evaluation SERAFIN
- Evaluation situation SSIAD
"""

* status ^short = "Correspondance des statuts métier avec les codes FHIR : TERMINE -> in-progress, APPROUVE -> completed, VALIDE -> amended."
* status.extension contains TDDUIStatusAuthor named TDDUIStatusAuthor 0..1

* questionnaire 1..1

* subject 1..1
* subject only Reference(TDDUIPatient or TDDUIPatientINS)

* author only Reference(TDDUIPractitioner)

* source only Reference(TDDUIPractitioner or TDDUIPatient or TDDUIPatientINS)

* extension contains
    TDDUIQRParticipant named TDDUIQRParticipant 0..1 and 
    TDDUIAttachment named TDDUIAttachment 0..* and
    TDDUIComment named TDDUIComment 0..1 and
    TDDUIAssessmentMethod named TDDUIAssessmentMethod 0..1

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
Title:    "Modèle de contenu DUI"
* -> "Evaluation AGGIR PA SSIAD, Evaluation AGGIR PH SSIAD"

* identifier -> "idEvaluation"
* authored -> "dateEvaluation"
* status -> "Statut.statut"
* status.extension[TDDUIStatusAuthor] -> "Statut.auteur"
* extension[TDDUIComment] -> "commentaireEvaluation"
* extension[TDDUIAssessmentMethod] -> "modaliteEvaluation"
* questionnaire -> "typeEvaluation"
* subject -> "Usager"
* encounter -> "Evenement"
* extension[TDDUIAttachment] -> "pieceJointeEvaluation"
* extension[TDDUIQRParticipant].extension[TDDUIResponsible] -> "Responsable"
* extension[TDDUIQRParticipant].extension[TDDUIPorteur] -> "Porteur"
* author -> "Auteur"
* source -> "Evaluateur"
* meta.lastUpdated -> "Statut.dateStatut"
* item.answer -> "resultatEvaluation"
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
Title:    "Modèle de contenu DUI"
* -> "Evaluation SERAFIN, Evaluation de la situation SSIAD"

* identifier -> "idEvaluation"
* authored -> "dateEvaluation"
* status -> "Statut.statut"
* status.extension[TDDUIStatusAuthor] -> "Statut.auteur"
* extension[TDDUIComment] -> "commentaireEvaluation"
* questionnaire -> "typeEvaluation"
* subject -> "Usager"
* encounter -> "Evenement"
* extension[TDDUIAttachment] -> "pieceJointeEvaluation"
* extension[TDDUIQRParticipant].extension[TDDUIResponsible] -> "Responsable"
* extension[TDDUIQRParticipant].extension[TDDUIPorteur] -> "Porteur"
* author -> "Auteur"
* source -> "Evaluateur"
* meta.lastUpdated -> "Statut.dateStatut"
* item.extension[TDDUIComment] -> "commentaire"
* item -> "«premier niveau»DetailEvaluation"
* item.linkId -> "champsEvalue"
* item.answer -> "resultatChampsEvalue"

Invariant: auto-eval-porteur
Description: "Dans le cas d'une auto évaluation, le porteur doit être renseigné."
Severity: #error
Expression: "(source.exists() and source.reference.contains('Patient/')) implies extension.where(url='https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-qr-participant').extension.where(url='TDDUIPorteur').exists()"
Invariant: professionnel-requis
Description: "Hormis le cas de l'auto évaluation, au moins un des 3 éléments (Evaluateur, Responsable, Auteur) doit être renseigné"
Severity: #error
Expression: "source.reference.contains('Patient/').not() implies (source.reference.contains('Practitioner/') or author.exists() or extension.where(url='https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-qr-participant').exists())"
