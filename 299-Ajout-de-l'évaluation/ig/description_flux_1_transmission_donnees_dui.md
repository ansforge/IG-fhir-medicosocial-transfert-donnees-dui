# Flux 1 - Transmission de données DUI - Médicosocial - Transfert de données DUI v2.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Volume 2 - Détail des transactions**](description_flux.md)
* **Flux 1 - Transmission de données DUI**

## Flux 1 - Transmission de données DUI

Ce flux permet la transmission de données d'un logiciel DUI

### Flux 1.1 - Transmission de données DUI

La transmission de données d'un logiciel DUI est assurée par l'interaction FHIR [create](https://hl7.org/fhir/R4/http.html#create). Le Producteur envoie une requête HTTP POST dont le corps contient une ressource de type Bundle conforme au profil [TDDUIBundle](StructureDefinition-tddui-bundle.md) :

`POST [base]/`

Où `[base]` est le point de contact FHIR.

Les différentes ressources sont véhiculées via un bundle de type Transaction, les ressources sont véhiculées via l'élément : `Bundle.entry`. Les ressources utilisables sont :

* [TDDUIPatient](StructureDefinition-tddui-patient.md) représentant l'usager,
* [TDDUIPatientINS](StructureDefinition-tddui-patient-ins.md) représentant l'usager transmis avec l'INS,
* [TDDUIEncounterSejour](StructureDefinition-tddui-encounter-sejour.md) représentant un séjour,
* [TDDUIOrganization](StructureDefinition-tddui-organization.md) représentant une entité juridique

### Flux 1.2 Resultat de la transmission de données DUI

Si la création des ressources contenue dans le Bundle est correctement effectuée, le Consommateur doit retourner un code HTTPS 201 « Created » ainsi que les ressources créées avec les attributs `id`, `lastUpdated` et `versionId` mis à jour.

En cas d’échec, le Consommateur doit répondre avec le code HTTPS approprié tel que défini par l’API REST FHIR [(Http - FHIR v4.0.1 (hl7.org))](http://hl7.org/fhir/R4/http.html). Une ressource OperationOutcome doit également y être associé pour véhiculer les messages d’erreurs détaillant la raison de l’erreur [(OperationOutcome - FHIR v4.0.1 (hl7.org))](http://hl7.org/fhir/R4/operationoutcome.html).

