Ce flux permet la transmission de données d'un logiciel DUI

<div>{%include flux1.svg%}</div>

### Flux 1.1 - Transmission de données DUI

La transmission de données d'un logiciel DUI est assurée par l'interaction FHIR <a href="https://hl7.org/fhir/R4/http.html#transaction">Transaction</a>. Le Producteur envoie une requête HTTP POST dont le corps est une ressource Bundle de type "transaction" conforme au profil [TDDUIBundle](StructureDefinition-tddui-bundle.html) :

`POST [base]/`

Où `[base]` est le point de contact FHIR.

Les différentes ressources sont véhiculées via l'élément : Bundle.entry. Les ressources utilisables sont conformes aux profils :

* [TDDUIPatient](StructureDefinition-tddui-patient.html) représentant l'usager,
* [TDDUIPatientINS](StructureDefinition-tddui-patient-ins.html) représentant l'usager transmis avec l'INS,
* [TDDUIEncounterSejour](StructureDefinition-tddui-encounter-sejour.html) représentant un séjour,
* [TDDUIOrganization](StructureDefinition-tddui-organization.html) représentant une entité juridique,
* [TDDUIEncounterEvenement](StructureDefinition-tddui-encounter-evenement.html) représentant un événement lié à la prise en charge d'un usager,
* [TDDUIPractitioner](StructureDefinition-tddui-practitioner.html) représentant un professionnel,
* [TDDUIPractitionerRole](StructureDefinition-tddui-practitioner-role.html) représentant un professionnel,
* [TDDUITaskTransportProfessionnel](StructureDefinition-tddui-task-transport-professionnel.html) représentant le transport du professionnel,
* [TDDUITaskTransportUsager](StructureDefinition-tddui-task-transport-usager.html) représentant le transport de l'usager,
* [TDDUIQuestionnaireResponse](StructureDefinition-tddui-questionnaire-response.html) représentant les réponses aux questionnaires dans le cadre des évaluations.
  - Lorsqu'une ressource QuestionnaireResponse est présente, elle doit être conforme à un des Questionnaires suivants :
    - [tddui-questionnaire-aggir-pa-ssiad](Questionnaire-tddui-questionnaire-aggir-pa-ssiad.html),
    - [tddui-questionnaire-aggir-ph-ssiad](Questionnaire-tddui-questionnaire-aggir-ph-ssiad.html),
    - [tddui-questionnaire-serafin](Questionnaire-tddui-questionnaire-serafin.html),
    - [tddui-questionnaire-situation-ssiad](Questionnaire-tddui-questionnaire-situation-ssiad.html)

* [TDDUIDocumentReference](StructureDefinition-tddui-document-reference.html) représentant les pièces jointes.
* [TDDUICarePlanProjetPersonnalise](StructureDefinition-tddui-careplan-projet-personnalise.html) représentant le projet personnalisé.
* [TDDUIConsentAccord](StructureDefinition-tddui-consent-accord.html) représentant l'accord de l'usager, de son entourage ou de la structure.
* [TDDUIGoalAttente](StructureDefinition-tddui-goal-attente.html) représentant les attentes pour un usager.
* [TDDUIGoalObjectif](StructureDefinition-tddui-goal-objectif.html) représentant les résultats à atteindre.
* [TDDUIServiceRequestBesoin](StructureDefinition-tddui-service-request-besoin.html) représentant les besoins de l'usager.
* [TDDUITaskAction](StructureDefinition-tddui-task-action.html) représentant les actions réalisées.
* [TDDUITaskBilan](StructureDefinition-tddui-task-bilan.html) représentant le bilan.
* [TDDUITaskMoyenRessource](StructureDefinition-tddui-task-moyen-ressource.html) représentant les moyens ou ressources utilisées.
* [TDDUITaskPrestation](StructureDefinition-tddui-task-prestation.html) représentant les prestations.
* [FrCoreRelatedPerson](https://hl7.fr/ig/fhir/core/StructureDefinition-fr-core-related-person.html) représentant les personnes relatives à l'usager.

Pour toutes ces ressources, seule la création est possible via l'intéraction FHIR <a href="https://hl7.org/fhir/R4/http.html#create">Create</a>.

### Flux 1.2 Resultat de la transmission de données DUI

Si la création des ressources contenues dans le Bundle est correctement effectuée, le Consommateur doit retourner un code HTTP 200 OK avec, dans le corps de la réponse, une ressource « Bundle » de type « [transaction-response](https://hl7.org/fhir/R4/http.html#transaction-response)».
Le Bundle contient une entrée pour chaque ressource reçue dans le Bundle de la requête. Chaque entrée contient le statut de l’opération (201 Created) ainsi que les attributs mis à jour « id » et « versionId».

En cas d'échec, le Consommateur rejette l'ensemble des actions demandées. Aucune des ressources envoyées ne sont alors créées. Le Consommateur doit retourner le code HTTP approprié tel que défini par [l’API REST FHIR](https://hl7.org/fhir/R4/http.html#trules). Une ressource OperationOutcome doit également y être associé pour véhiculer les messages d’erreurs détaillant la raison de l’erreur [(OperationOutcome - FHIR v4.0.1 (hl7.org))](http://hl7.org/fhir/R4/operationoutcome.html).

### Gestion des identifiants dans le Bundle
 Lorsque plusieurs créations de ressource transitent au sein du même Bundle, il est possible et parfois nécessaire de faire le lien entre elles. Par exemple, référencer un usager et une structure au sein d'un séjour. Le Producteur peut utiliser :
* la valeur de entry.fullUrl (qui peut être une URN de type urn:uuid:[uuid] ou une URL absolue)(Ex https://interop.esante.gouv.fr/ig/fhir/tddui/Patient/[id]) ;
* une référence relative construite avec le type et l’identifiant technique (attribut id) de la ressource (ex. Patient/[id]).
Dans tous les cas, la référence doit correspondre soit au fullUrl d’une autre entrée du Bundle, soit au couple resourceType/id de la ressource ciblée.
  
Pour plus d'information ([voir la spécification FHIR](https://build.fhir.org/bundle.html#references))

Une fois les ressources reçues et validées, les identifiants techniques sont ré-assignés par le Consommateur [voir la spécification FHIR](http://hl7.org/fhir/R4/http.html#create). Il assure que tout les champs faisant référence à un identifiant technique soit mis à jour avec le nouvel id [voir la spécification FHIR](https://build.fhir.org/http.html#url-fixing).Le producteur doit connaitre ces nouveaux id pour les utiliser dans les opérations suivantes.
