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

* rest.resource[+].type = #Organization
* rest.resource[=].supportedProfile = Canonical(tddui-organization)
* rest.resource[=].interaction[0].code = #create

* rest.resource[+].type = #Encounter
* rest.resource[=].supportedProfile = Canonical(tddui-encounter-sejour)
* rest.resource[=].supportedProfile[+] = Canonical(tddui-encounter-evenement)
* rest.resource[=].interaction[0].code = #create

* rest.resource[+].type = #Practitioner
* rest.resource[=].supportedProfile = Canonical(tddui-practitioner)
* rest.resource[=].interaction[0].code = #create

* rest.resource[+].type = #PractitionerRole
* rest.resource[=].supportedProfile = Canonical(tddui-practitioner-role)
* rest.resource[=].interaction[0].code = #create

* rest.resource[+].type = #Task
* rest.resource[=].supportedProfile[0] = Canonical(tddui-task-transport-professionnel)
* rest.resource[=].supportedProfile[+] = Canonical(tddui-task-transport-usager)
* rest.resource[=].supportedProfile[+] = Canonical(tddui-task-action)
* rest.resource[=].supportedProfile[+] = Canonical(tddui-task-bilan)
* rest.resource[=].supportedProfile[+] = Canonical(tddui-task-moyen-ressource)
* rest.resource[=].supportedProfile[+] = Canonical(tddui-task-prestation)
* rest.resource[=].interaction[0].code = #create

* rest.resource[+].type = #QuestionnaireResponse
* rest.resource[=].supportedProfile = Canonical(tddui-questionnaire-response)
* rest.resource[=].interaction[0].code = #create

* rest.resource[+].type = #DocumentReference
* rest.resource[=].supportedProfile = Canonical(tddui-document-reference)
* rest.resource[=].interaction[0].code = #create

* rest.resource[+].type = #CarePlan
* rest.resource[=].supportedProfile = Canonical(tddui-careplan-projet-personnalise)
* rest.resource[=].interaction[0].code = #create

* rest.resource[+].type = #Consent
* rest.resource[=].supportedProfile = Canonical(tddui-consent-accord)
* rest.resource[=].interaction[0].code = #create

* rest.resource[+].type = #Goal
* rest.resource[=].supportedProfile[0] = Canonical(tddui-goal-attente)
* rest.resource[=].supportedProfile[+] = Canonical(tddui-goal-objectif)
* rest.resource[=].supportedProfile[+] = Canonical(tddui-goal-projet-vie)
* rest.resource[=].interaction[0].code = #create

* rest.resource[+].type = #ServiceRequest
* rest.resource[=].supportedProfile[0] = Canonical(tddui-service-request-besoin)
* rest.resource[=].supportedProfile[+] = Canonical(tddui-service-request-demande-orientation)
* rest.resource[=].interaction[0].code = #create

* rest.resource[+].type = #RelatedPerson
* rest.resource[=].supportedProfile = Canonical(tddui-related-person-contact)
* rest.resource[=].interaction[0].code = #create

* rest.resource[+].type = #Observation
* rest.resource[=].supportedProfile[0] = Canonical(tddui-observation-cause-mortalite)
* rest.resource[=].supportedProfile[+] = Canonical(tddui-observation-periode-scolaire)
* rest.resource[=].supportedProfile[+] = Canonical(tddui-observation-mobilite-usager)
* rest.resource[=].supportedProfile[+] = Canonical(tddui-observation-repas)
* rest.resource[=].interaction[0].code = #create

* rest.resource[+].type = #Schedule
* rest.resource[=].supportedProfile = Canonical(tddui-schedule)
* rest.resource[=].interaction[0].code = #create

* rest.resource[+].type = #Slot
* rest.resource[=].supportedProfile = Canonical(tddui-slot-presence-absence)
* rest.resource[=].interaction[0].code = #create

* rest.resource[+].type = #Basic
* rest.resource[=].supportedProfile = Canonical(tddui-basic-decision)
* rest.resource[=].interaction[0].code = #create

* rest.interaction[0].code = #transaction
* rest.interaction[=].documentation = "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-bundle"
