Instance: TDDUIConsommateur
InstanceOf: CapabilityStatement
Usage: #definition
* name = "TDDUIConsommateur"
* title = "TDDUI-Consommateur"
* status = #active
* experimental = false
* date = "2024-06-20T09:51:35+02:00"
* publisher = "ANS"
* description = "Le rôle du Consommateur est de recueillir les données d'un logiciel DUI. Il correspond à un SI tiers."
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #application/fhir+xml
* format[+] = #application/fhir+json
* implementationGuide = "https://interop.esante.gouv.fr/ig/fhir/tddui"
* rest.mode = #client
* rest.documentation = "Réception de données transmises depuis un logiciel DUI (flux 1)."
* rest.security.cors = false
* rest.security.description = "L’ANS propose des référentiels dédiés à la politique de sécurité (la PGSSI-S) et des mécanismes de sécurisation sont définis dans les volets de la couche Transport du Cadre d’Interopérabilité des systèmes d’information de santé (CI-SIS)"

* rest.resource[0].type = #Patient
* rest.resource[=].profile = Canonical(tddui-patient)
* rest.resource[+].profile = Canonical(tddui-patient-ins)
* rest.resource[=].interaction[0].code = #read

* rest.resource[1].type = #Organization
* rest.resource[=].profile = Canonical(tddui-Organization)
* rest.resource[=].interaction[0].code = #read

* rest.resource[2].type = #Encounter
* rest.resource[=].profile = Canonical(tddui-Encounter-sejour)
* rest.resource[=].interaction[0].code = #read

* rest.interaction[0].code = #transaction
* rest.interaction[=].documentation = "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-bundle"