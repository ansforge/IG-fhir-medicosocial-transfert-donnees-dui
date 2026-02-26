Instance: tddui-observation-periodescolaire-example
InstanceOf: TDDUIObservationPeriodeScolaire
Title: "TDDUI Observation PeriodeScolaire Example"
Description: "Exemple de la ressource TDDUIObservationPeriodeScolaire"
Usage: #example

* identifier.value = "3480787529/147720425367411-PSCO-12548"

* status = #registered

* performer[referentScolaire] = Reference(tddui-related-person-contact-example)

* subject = Reference(tddui-patient-ins-example)

* component[typeEnseignementSpecialise].valueCodeableConcept =   https://smt.esante.gouv.fr/fhir/CodeSystem/tre-r408-type-enseignement-specialise#3 "Scolarisation en ULIS collège"
* component[diplome].valueCodeableConcept = https://mos.esante.gouv.fr/NOS/TRE_R14-TypeDiplome/FHIR/TRE-R14-TypeDiplome#DES "Diplôme d'études spécialisées"