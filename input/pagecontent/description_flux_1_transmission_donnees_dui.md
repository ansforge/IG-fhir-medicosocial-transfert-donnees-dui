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

Le producteur peut renseigner l'élément id des ressources transmises dans le bundle. Cet id pourra être utilisé pour faire le lien entre l'usager, son séjour et sa structure au niveau des références de la ressource Encounter.

### Flux 1.2 Resultat de la transmission de données DUI

Si la création des ressources contenue dans le Bundle est correctement effectuée, le Consommateur doit retourner un code HTTPS 201 « Created » ainsi que les ressources créées avec les attributs `id`, `lastUpdated` et `versionId` mis à jour par le serveur.

Le producteur doit connaitre ces nouveaux id pour les utiliser dans les opérations suivantes.

En cas d’échec, le Consommateur doit répondre avec le code HTTPS approprié tel que défini par l’API REST FHIR [(Http - FHIR v4.0.1 (hl7.org))](http://hl7.org/fhir/R4/http.html). Une ressource OperationOutcome doit également y être associé pour véhiculer les messages d’erreurs détaillant la raison de l’erreur [(OperationOutcome - FHIR v4.0.1 (hl7.org))](http://hl7.org/fhir/R4/operationoutcome.html).