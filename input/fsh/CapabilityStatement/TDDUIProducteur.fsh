Instance: TDDUIProducteur
InstanceOf: CapabilityStatement
Usage: #definition
* name = "TDDUIProducteur"
* title = "TDDUI-Producteur"
* status = #active
* experimental = false
* date = "2024-06-20T15:51:35+02:00"
* publisher = "ANS"
* description = "Le rôle de Producteur est de transmettre des données de son logiciel DUI. Il correspond à un logiciel DUI."
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #application/fhir+xml
* format[+] = #application/fhir+json
* implementationGuide = "https://interop.esante.gouv.fr/ig/fhir/tddui"
* rest.mode = #client
* rest.documentation = "Transmission de données DUI vers un SI tiers (flux 1)."
* rest.security.cors = false
* rest.security.description = "L’ANS propose des référentiels dédiés à la politique de sécurité (la PGSSI-S) et des mécanismes de sécurisation sont définis dans les volets de la couche Transport du Cadre d’Interopérabilité des systèmes d’information de santé (CI-SIS)"

* rest.resource[0].type = #Patient
* rest.resource[=].supportedProfile[0] = Canonical(tddui-patient)
* rest.resource[=].supportedProfile[+] = Canonical(tddui-patient-ins)
* rest.resource[=].interaction[0].code = #create

* rest.resource[1].type = #Organization
* rest.resource[=].supportedProfile = Canonical(tddui-organization)
* rest.resource[=].interaction[0].code = #create

* rest.resource[2].type = #Encounter
* rest.resource[=].supportedProfile = Canonical(tddui-encounter-sejour)
* rest.resource[=].supportedProfile[+] = Canonical(tddui-encounter-evenement)
* rest.resource[=].interaction[0].code = #create

* rest.resource[3].type = #Practitioner
* rest.resource[=].supportedProfile = Canonical(tddui-practitioner)
* rest.resource[=].interaction[0].code = #create

* rest.resource[4].type = #PractitionerRole
* rest.resource[=].supportedProfile = Canonical(tddui-practitioner-role)
* rest.resource[=].interaction[0].code = #create

* rest.resource[5].type = #Task
* rest.resource[=].supportedProfile[0] = Canonical(tddui-task-transport-professionnel)
* rest.resource[=].supportedProfile[+] = Canonical(tddui-task-transport-usager)
* rest.resource[=].supportedProfile[+] = Canonical(tddui-task-action)
* rest.resource[=].supportedProfile[+] = Canonical(tddui-task-bilan)
* rest.resource[=].supportedProfile[+] = Canonical(tddui-task-moyen-ressource)
* rest.resource[=].supportedProfile[+] = Canonical(tddui-task-prestation)
* rest.resource[=].interaction[0].code = #create

* rest.resource[6].type = #QuestionnaireResponse
* rest.resource[=].supportedProfile = Canonical(tddui-questionnaire-response)
* rest.resource[=].interaction[0].code = #create

* rest.resource[7].type = #DocumentReference
* rest.resource[=].supportedProfile = Canonical(tddui-document-reference)
* rest.resource[=].interaction[0].code = #create

* rest.resource[8].type = #CarePlan
* rest.resource[=].supportedProfile = Canonical(tddui-careplan-projet-personnalise)
* rest.resource[=].interaction[0].code = #create

* rest.resource[9].type = #Consent
* rest.resource[=].supportedProfile = Canonical(tddui-consent-accord)
* rest.resource[=].interaction[0].code = #create

* rest.resource[10].type = #Goal
* rest.resource[=].supportedProfile[0] = Canonical(tddui-goal-attente)
* rest.resource[=].supportedProfile[+] = Canonical(tddui-goal-objectif)
* rest.resource[=].interaction[0].code = #create

* rest.resource[11].type = #ServiceRequest
* rest.resource[=].supportedProfile = Canonical(tddui-service-request-besoin)
* rest.resource[=].interaction[0].code = #create

* rest.interaction[0].code = #transaction
* rest.interaction[=].documentation = "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-bundle"
