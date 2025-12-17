Instance: tddui-pp-ime-bundle-example
InstanceOf: TDDUIBundle
Description: "Exemple de bundle conforme au profil TDDUIBundle contenant le projet personnalisé en IME"
Usage: #example

* type = #transaction

* entry[DUIPatient].fullUrl = "https://test-server.fr/Patient/tddui-pp-ime-patient-example"
* entry[DUIPatient].resource = tddui-pp-ime-patient-example
* entry[DUIPatient].request.method = #POST
* entry[DUIPatient].request.url = "TDDUIPatient"

* entry[DUIConsentAccord].fullUrl = "https://test-server.fr/Consent/tddui-pp-ime-consent-accord-example"
* entry[DUIConsentAccord].resource = tddui-pp-ime-consent-accord-example
* entry[DUIConsentAccord].request.method = #POST
* entry[DUIConsentAccord].request.url = "TDDUIConsentAccord"

* entry[DUICarePlanProjetPersonnalise].fullUrl = "https://test-server.fr/CarePlan/tddui-pp-ime-careplan-example"
* entry[DUICarePlanProjetPersonnalise].resource = tddui-pp-ime-careplan-example
* entry[DUICarePlanProjetPersonnalise].request.method = #POST
* entry[DUICarePlanProjetPersonnalise].request.url = "TDDUICarePlanProjetPersonnalise"

* entry[DUIGoalObjectif][0].fullUrl = "https://test-server.fr/Goal/tddui-pp-ime-goal-objectif-1-example"
* entry[DUIGoalObjectif][0].resource = tddui-pp-ime-goal-objectif-1-example
* entry[DUIGoalObjectif][0].request.method = #POST
* entry[DUIGoalObjectif][0].request.url = "TDDUIGoalObjectif"

* entry[DUIGoalObjectif][1].fullUrl = "https://test-server.fr/Goal/tddui-pp-ime-goal-objectif-2-example"
* entry[DUIGoalObjectif][1].resource = tddui-pp-ime-goal-objectif-2-example
* entry[DUIGoalObjectif][1].request.method = #POST
* entry[DUIGoalObjectif][1].request.url = "TDDUIGoalObjectif"

* entry[DUITaskAction][0].fullUrl = "https://test-server.fr/Task/tddui-pp-ime-task-action-1-aesh-example"
* entry[DUITaskAction][0].resource = tddui-pp-ime-task-action-1-aesh-example
* entry[DUITaskAction][0].request.method = #POST
* entry[DUITaskAction][0].request.url = "TDDUITaskAction"

* entry[DUITaskAction][1].fullUrl = "https://test-server.fr/Task/tddui-pp-ime-task-action-1-educ-example"
* entry[DUITaskAction][1].resource = tddui-pp-ime-task-action-1-educ-example
* entry[DUITaskAction][1].request.method = #POST
* entry[DUITaskAction][1].request.url = "TDDUITaskAction"
