Profile: TDDUIQuestionnaireResponse
Parent: QuestionnaireResponse
Id: tddui-questionnaire-response
Title: "TDDUI QuestionnaireResponse"
Description: "Profil de la ressource QuestionnaireResponse utilisé pour transmettre les réponses aux questionnaires dans le cadre des évaluations." 

* identifier 1..1

* subject 1..1
* subject only Reference(TDDUIPatient or TDDUIPatientINS)

* author only Reference(TDDUIPractitioner)

* source only Reference(TDDUIPractitioner)

* extension contains
    TDDUIAuthor named TDDUIAuthor 0..1 and 
    TDDUIAttachment named TDDUIAttachment 0..*

* encounter 0..1
* encounter only Reference(TDDUIEncounterEvenement)

* status.extension contains
    TDDUICancelReason named TDDUICancelReason 0..1
