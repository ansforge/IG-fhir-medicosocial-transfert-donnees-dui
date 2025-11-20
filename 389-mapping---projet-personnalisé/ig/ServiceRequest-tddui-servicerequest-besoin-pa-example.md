# tddui-servicerequest-besoin-pa-example - Médicosocial - Transfert de données DUI v2.1.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **tddui-servicerequest-besoin-pa-example**

## Example ServiceRequest: tddui-servicerequest-besoin-pa-example

Profil: [TDDUI ServiceRequest Besoin](StructureDefinition-tddui-service-request-besoin.md)

**identifier**: 3480787529/123456789-PPBesoin-1234

**basedOn**: [CarePlan Projet personnalisé de Mme Jeanne L.](CarePlan-tddui-careplan-projet-perso-pa-example.md)

**status**: Active

**intent**: Plan

**code**: Besoin d'aide pour la mobilité et les déplacements.
Besoin en terme de nutrition et alimentation.
Besoin de maintien du lien social et d'activités récréatives.

**subject**: [Jeanne L. (official) Female, Date de Naissance inconnue ( Patient internal identifier: 3480787529/123456789)](Patient-tddui-patient-pa-example-pp.md)



## Resource Content

```json
{
  "resourceType" : "ServiceRequest",
  "id" : "tddui-servicerequest-besoin-pa-example",
  "meta" : {
    "profile" : [
      "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-service-request-besoin"
    ]
  },
  "identifier" : [
    {
      "value" : "3480787529/123456789-PPBesoin-1234"
    }
  ],
  "basedOn" : [
    {
      "reference" : "CarePlan/tddui-careplan-projet-perso-pa-example"
    }
  ],
  "status" : "active",
  "intent" : "plan",
  "code" : {
    "text" : "Besoin d'aide pour la mobilité et les déplacements.\nBesoin en terme de nutrition et alimentation.\nBesoin de maintien du lien social et d'activités récréatives."
  },
  "subject" : {
    "reference" : "Patient/tddui-patient-pa-example-pp"
  }
}

```
