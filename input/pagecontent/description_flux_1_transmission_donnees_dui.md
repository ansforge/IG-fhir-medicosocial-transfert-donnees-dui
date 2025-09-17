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
* [TDDUIOrganization](StructureDefinition-tddui-organization.html) représentant une entité juridique





Pour toutes ces ressources, seule la création est possible via l'intéraction FHIR <a href="https://hl7.org/fhir/R4/http.html#create">Create</a>.

### Flux 1.2 Resultat de la transmission de données DUI

Si la création des ressources contenues dans le Bundle est correctement effectuée, le Consommateur doit retourner un code HTTP 200 OK avec, dans le corps de la réponse, une ressource « Bundle » de type « [transaction-response](https://hl7.org/fhir/R4/http.html#transaction-response)».
Le Bundle contient une entrée pour chaque ressource reçue dans le Bundle de la requête. Chaque entrée contient le statut de l’opération (201 Created) ainsi que les attributs mis à jour « id » et « versionId».

En cas d'échec, le Consommateur rejette l'ensemble des actions demandées. Aucune des ressources envoyées ne sont alors créées. Le Consommateur doit retourner le code HTTP approprié tel que défini par [l’API REST FHIR](https://hl7.org/fhir/R4/http.html#trules). Une ressource OperationOutcome doit également y être associé pour véhiculer les messages d’erreurs détaillant la raison de l’erreur [(OperationOutcome - FHIR v4.0.1 (hl7.org))](http://hl7.org/fhir/R4/operationoutcome.html).