Ce flux permet la transmission de données d'un logiciel DUI

<div>{%include flux1.svg%}</div>

### Flux 1.1 - Transmission de données DUI
La transmission de données d'un logiciel DUI est assurée par l'interaction FHIR <a href="https://hl7.org/fhir/R4/http.html#create">create</a>. Le Producteur envoie une requête HTTP POST dont le corps contient une ressource de type Bundle conforme au profil [TDDUIBundle](StructureDefinition-tddui-bundle.html) : 

`POST [base]/`

Où `[base]` est le point de contact FHIR.

Les différentes ressources sont véhiculées via un bundle de type Transaction, les ressources sont véhiculées via l'élément : `Bundle.entry`.
Les ressources utilisables sont :
* [TDDUIPatient](StructureDefinition-tddui-patient.html) représentant l'usager,
* [TDDUIPatientINS](StructureDefinition-tddui-patient-ins.html) représentant l'usager transmis avec l'INS,
* [TDDUIEncounterSejour](StructureDefinition-tddui-encounter-sejour.html) représentant un séjour,
* [TDDUIOrganization](StructureDefinition-tddui-organization.html) représentant une entité juridique

### Flux 1.2 Resultat de la transmission de données DUI

Si la création des ressources contenue dans le Bundle est correctement effectuée, le Consommateur doit retourner un code HTTP 201 « Created » ainsi que les ressources créées avec les attributs `id`, `lastUpdated` et `versionId` mis à jour.

En cas d’échec, le Consommateur doit répondre avec le code HTTP approprié tel que défini par l’API REST FHIR [(Http - FHIR v4.0.1 (hl7.org))](http://hl7.org/fhir/R4/http.html). Une ressource OperationOutcome doit également y être associé pour véhiculer les messages d’erreurs détaillant la raison de l’erreur [(OperationOutcome - FHIR v4.0.1 (hl7.org))](http://hl7.org/fhir/R4/operationoutcome.html).