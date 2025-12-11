Instance: tddui-pp-pa-bundle-example
InstanceOf: TDDUIBundle
Description: "Exemple de bundle conforme au profil TDDUIBundle contenant le projet personnalisé PA."
Usage: #example
* type = #transaction

* entry[DUIPatient].fullUrl = "https://test-server.fr/Patient/tddui-pp-pa-patient-example-pp"
* entry[DUIPatient].resource = tddui-pp-pa-patient-example-pp
* entry[DUIPatient].request.method = #POST
* entry[DUIPatient].request.url = "TDDUIPatient"

* entry[DUIConsentAccord].fullUrl = "https://test-server.fr/Consent/tddui-pp-pa-consent-accord-example"
* entry[DUIConsentAccord].resource = tddui-pp-pa-consent-accord-example
* entry[DUIConsentAccord].request.method = #POST
* entry[DUIConsentAccord].request.url = "TDDUIConsentAccord"

* entry[DUICarePlanProjetPersonnalise].fullUrl = "https://test-server.fr/CarePlan/tddui-pp-pa-careplan-example"
* entry[DUICarePlanProjetPersonnalise].resource = tddui-pp-pa-careplan-example
* entry[DUICarePlanProjetPersonnalise].request.method = #POST
* entry[DUICarePlanProjetPersonnalise].request.url = "TDDUICarePlanProjetPersonnalise"

* entry[DUIDocumentReference][0].fullUrl = "https://test-server.fr/DocumentReference/tddui-pp-pa-documentreference-bilan-objectif-1-example"
* entry[DUIDocumentReference][0].resource = tddui-pp-pa-documentreference-bilan-objectif-1-example
* entry[DUIDocumentReference][0].request.method = #POST
* entry[DUIDocumentReference][0].request.url = "TDDUIDocumentReference"

* entry[DUIDocumentReference][1].fullUrl = "https://test-server.fr/DocumentReference/tddui-pp-pa-documentreference-entrant-example"
* entry[DUIDocumentReference][1].resource = tddui-pp-pa-documentreference-entrant-example
* entry[DUIDocumentReference][1].request.method = #POST
* entry[DUIDocumentReference][1].request.url = "TDDUIDocumentReference"

* entry[DUIGoalAttente][0].fullUrl = "https://test-server.fr/Goal/tddui-pp-pa-goal-attente-famille-example"
* entry[DUIGoalAttente][0].resource = tddui-pp-pa-goal-attente-famille-example
* entry[DUIGoalAttente][0].request.method = #POST
* entry[DUIGoalAttente][0].request.url = "TDDUIGoalAttente"

* entry[DUIGoalAttente][1].fullUrl = "https://test-server.fr/Goal/tddui-pp-pa-goal-attente-usager-example"
* entry[DUIGoalAttente][1].resource = tddui-pp-pa-goal-attente-usager-example
* entry[DUIGoalAttente][1].request.method = #POST
* entry[DUIGoalAttente][1].request.url = "TDDUIGoalAttente"

* entry[DUIGoalObjectif][0].fullUrl = "https://test-server.fr/Goal/tddui-pp-pa-goal-objectif-1-example"
* entry[DUIGoalObjectif][0].resource = tddui-pp-pa-goal-objectif-1-example
* entry[DUIGoalObjectif][0].request.method = #POST
* entry[DUIGoalObjectif][0].request.url = "TDDUIGoalObjectif"

* entry[DUIGoalObjectif][1].fullUrl = "https://test-server.fr/Goal/tddui-pp-pa-goal-objectif-2-example"
* entry[DUIGoalObjectif][1].resource = tddui-pp-pa-goal-objectif-2-example
* entry[DUIGoalObjectif][1].request.method = #POST
* entry[DUIGoalObjectif][1].request.url = "TDDUIGoalObjectif"

* entry[DUIGoalObjectif][2].fullUrl = "https://test-server.fr/Goal/tddui-pp-pa-goal-objectif-3-example"
* entry[DUIGoalObjectif][2].resource = tddui-pp-pa-goal-objectif-3-example
* entry[DUIGoalObjectif][2].request.method = #POST
* entry[DUIGoalObjectif][2].request.url = "TDDUIGoalObjectif"

* entry[DUIPractitioner].fullUrl = "https://test-server.fr/Practitioner/tddui-pp-pa-practitioner-ide-example"
* entry[DUIPractitioner].resource = tddui-pp-pa-practitioner-ide-example
* entry[DUIPractitioner].request.method = #POST
* entry[DUIPractitioner].request.url = "TDDUIPractitioner"

* entry[DUIQuestionnaireResponse].fullUrl = "https://test-server.fr/QuestionnaireResponse/tddui-pp-pa-questionnaire-response-aggir-pa-example"
* entry[DUIQuestionnaireResponse].resource = tddui-pp-pa-questionnaire-response-aggir-pa-example
* entry[DUIQuestionnaireResponse].request.method = #POST
* entry[DUIQuestionnaireResponse].request.url = "TDDUIQuestionnaireResponse"

* entry[DUIServiceRequestBesoin][0].fullUrl = "https://test-server.fr/ServiceRequest/tddui-pp-pa-servicerequest-besoin-1-example"
* entry[DUIServiceRequestBesoin][0].resource = tddui-pp-pa-servicerequest-besoin-1-example
* entry[DUIServiceRequestBesoin][0].request.method = #POST
* entry[DUIServiceRequestBesoin][0].request.url = "TDDUIServiceRequestBesoin"

* entry[DUIServiceRequestBesoin][1].fullUrl = "https://test-server.fr/ServiceRequest/tddui-pp-pa-servicerequest-besoin-2-example"
* entry[DUIServiceRequestBesoin][1].resource = tddui-pp-pa-servicerequest-besoin-2-example
* entry[DUIServiceRequestBesoin][1].request.method = #POST
* entry[DUIServiceRequestBesoin][1].request.url = "TDDUIServiceRequestBesoin"

* entry[DUIServiceRequestBesoin][2].fullUrl = "https://test-server.fr/ServiceRequest/tddui-pp-pa-servicerequest-besoin-3-example"
* entry[DUIServiceRequestBesoin][2].resource = tddui-pp-pa-servicerequest-besoin-3-example
* entry[DUIServiceRequestBesoin][2].request.method = #POST
* entry[DUIServiceRequestBesoin][2].request.url = "TDDUIServiceRequestBesoin"

* entry[DUITaskAction][0].fullUrl = "https://test-server.fr/Task/tddui-pp-pa-task-action-1-ergo-example"
* entry[DUITaskAction][0].resource = tddui-pp-pa-task-action-1-ergo-example
* entry[DUITaskAction][0].request.method = #POST
* entry[DUITaskAction][0].request.url = "TDDUITaskAction"

* entry[DUITaskAction][1].fullUrl = "https://test-server.fr/Task/tddui-pp-pa-task-action-1-ide-example"
* entry[DUITaskAction][1].resource = tddui-pp-pa-task-action-1-ide-example
* entry[DUITaskAction][1].request.method = #POST
* entry[DUITaskAction][1].request.url = "TDDUITaskAction"

* entry[DUITaskAction][2].fullUrl = "https://test-server.fr/Task/tddui-pp-pa-task-action-1-kine-example"
* entry[DUITaskAction][2].resource = tddui-pp-pa-task-action-1-kine-example
* entry[DUITaskAction][2].request.method = #POST
* entry[DUITaskAction][2].request.url = "TDDUITaskAction"

* entry[DUITaskAction][3].fullUrl = "https://test-server.fr/Task/tddui-pp-pa-task-action-2-anim-example"
* entry[DUITaskAction][3].resource = tddui-pp-pa-task-action-2-anim-example
* entry[DUITaskAction][3].request.method = #POST
* entry[DUITaskAction][3].request.url = "TDDUITaskAction"

* entry[DUITaskAction][4].fullUrl = "https://test-server.fr/Task/tddui-pp-pa-task-action-2-ide-example"
* entry[DUITaskAction][4].resource = tddui-pp-pa-task-action-2-ide-example
* entry[DUITaskAction][4].request.method = #POST
* entry[DUITaskAction][4].request.url = "TDDUITaskAction"

* entry[DUITaskAction][5].fullUrl = "https://test-server.fr/Task/tddui-pp-pa-task-action-3-psy-example"
* entry[DUITaskAction][5].resource = tddui-pp-pa-task-action-3-psy-example
* entry[DUITaskAction][5].request.method = #POST
* entry[DUITaskAction][5].request.url = "TDDUITaskAction"

* entry[DUITaskMoyenRessource][0].fullUrl = "https://test-server.fr/Task/tddui-pp-pa-task-moyen-ressource-ergo-1-example"
* entry[DUITaskMoyenRessource][0].resource = tddui-pp-pa-task-moyen-ressource-ergo-1-example
* entry[DUITaskMoyenRessource][0].request.method = #POST
* entry[DUITaskMoyenRessource][0].request.url = "TDDUITaskMoyenRessource"

* entry[DUITaskMoyenRessource][1].fullUrl = "https://test-server.fr/Task/tddui-pp-pa-task-moyen-ressource-ide-1-example"
* entry[DUITaskMoyenRessource][1].resource = tddui-pp-pa-task-moyen-ressource-ide-1-example
* entry[DUITaskMoyenRessource][1].request.method = #POST
* entry[DUITaskMoyenRessource][1].request.url = "TDDUITaskMoyenRessource"

* entry[DUITaskMoyenRessource][2].fullUrl = "https://test-server.fr/Task/tddui-pp-pa-task-moyen-ressource-ide-2-example"
* entry[DUITaskMoyenRessource][2].resource = tddui-pp-pa-task-moyen-ressource-ide-2-example
* entry[DUITaskMoyenRessource][2].request.method = #POST
* entry[DUITaskMoyenRessource][2].request.url = "TDDUITaskMoyenRessource"

* entry[DUITaskMoyenRessource][3].fullUrl = "https://test-server.fr/Task/tddui-pp-pa-task-moyen-ressource-kine-1-example"
* entry[DUITaskMoyenRessource][3].resource = tddui-pp-pa-task-moyen-ressource-kine-1-example
* entry[DUITaskMoyenRessource][3].request.method = #POST
* entry[DUITaskMoyenRessource][3].request.url = "TDDUITaskMoyenRessource"
