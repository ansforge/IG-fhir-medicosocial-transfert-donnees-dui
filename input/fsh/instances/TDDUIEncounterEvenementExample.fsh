Instance: tddui-encounter-evenement-example
InstanceOf: TDDUIEncounterEvenement
Usage: #example
Description: "Exemple d'un évènement"

* identifier.system = "https://identifiant-medicosocial-evenement.cnsa.fr"
* identifier.value = "3480787529/147720425367411-EVN-12548"
* identifier.type = https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-identifier-type#VN

* status = #finished

* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#HH // Code HH = Home Health (Cas d'usage SSIAD)

* type[ssiad].coding.code = #MED-1298
* type[ssiad].coding.system = "https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis"
* type[ssiad].coding.display = "Intervention d'un infirmer salarié"

* type[text].text = "Intervention"

* subject = Reference(tddui-patient-ins-example)

* serviceProvider = Reference(tddui-organization-example)

* participant[professionnel].individual = Reference(tddui-practitioner-example)

* partOf = Reference(tddui-encounter-sejour-example)

* period.start = "2023-04-14T10:30:00+02:00"
* period.end = "2023-04-14T11:15:00+02:00"

* location.location = Reference(tddui-event-location-example)

* extension[TDDUIRessourcesUsed].extension[TDDUIRessourceType].valueCodeableConcept.coding.system = "http://snomed.info/sct"
* extension[TDDUIRessourcesUsed].extension[TDDUIRessourceType].valueCodeableConcept.coding.code = #261324000
* extension[TDDUIRessourcesUsed].extension[TDDUIRessourceType].valueCodeableConcept.coding.display = "Vehicle"
* extension[TDDUIEventReport].valueString = "Observations cliniques : ; Recommandations pour les jours à venir : ; Prochaine visite : 15 avril 2023, 10h30 ; Remarque : Monsieur Dupont a compris les consignes pour la gestion de sa douleur et la mobilisation de sa hanche opérée."
* extension[TDDUIComment].valueString = "Cet évènement a débuté plus tard l’usager était sous la douche à l’heure du début du rendez-vous."
* extension[TDDUIEventLabel].valueString = "Visite à domicile pour soins infirmier."
* extension[TDDUIEventReason].valueString = "Suivi post-opératoire suite à intervention chirurgicale de la hanche."
