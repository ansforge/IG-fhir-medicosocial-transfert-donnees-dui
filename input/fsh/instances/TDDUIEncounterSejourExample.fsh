Instance: tddui-encounter-sejour-example
InstanceOf: TDDUIEncounterSejour
Usage: #example
Description: "Exemple d'un séjour en ESSMS"

// Date d’admission
* extension[tddui-admission-date].valueDateTime = "2023-04-11"

// Libellé mode d’entrée
* extension[tddui-entry-mode-label].valueString = "Date de début du suivi post-opératoire : 14/04/2023"

// Libellé mode de sortie
* extension[tddui-exit-mode-label].valueString = "Sortie prévisionnelle prévue pour le 5 mai 2023"

* status = #in-progress

* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#HH // Code HH = Home Health (Cas d'usage SSIAD)

// Date d'entrée
* period.start = "2023-04-14"

// Date prévisionnelle de sortie 
* extension[TDDUI-plannedEndDate-r5].valueDateTime = "2023-05-05"

// Identifiant du séjour
* identifier[idStay]
  * system = "https://identifiant-medicosocial-sejour.cnsa.fr"
  * value = "3480787529/147720425367411-SEJOUR-1012"

* subject = Reference(tddui-patient-ins-example)
* serviceProvider = Reference(tddui-organization-example)
