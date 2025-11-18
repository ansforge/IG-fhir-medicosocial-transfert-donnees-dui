# tddui-servicerequest-besoin-example - Médicosocial - Transfert de données DUI v2.1.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **tddui-servicerequest-besoin-example**

## Example ServiceRequest: tddui-servicerequest-besoin-example

Profil: [TDDUI ServiceRequest Besoin](StructureDefinition-tddui-service-request-besoin.md)

**identifier**: 3480787529/147720425367411-PPBesoin-12548

**basedOn**: [CarePlan Projet personnalisé de Mme Dupont](CarePlan-tddui-careplan-projet-perso-example.md)

**status**: Active

**intent**: Plan

**code**: Besoin d'accompagnement dans les activités de la vie quotidienne.

**subject**: [DUPONT Male, Date de Naissance :1947-04-03 ( Patient internal identifier: 3480787529/194704032)](Patient-tddui-patient-ins-example.md)



## Resource Content

```json
{
  "resourceType" : "ServiceRequest",
  "id" : "tddui-servicerequest-besoin-example",
  "meta" : {
    "profile" : [
      "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-service-request-besoin"
    ]
  },
  "identifier" : [
    {
      "value" : "3480787529/147720425367411-PPBesoin-12548"
    }
  ],
  "basedOn" : [
    {
      "reference" : "CarePlan/tddui-careplan-projet-perso-example"
    }
  ],
  "status" : "active",
  "intent" : "plan",
  "code" : {
    "text" : "Besoin d'accompagnement dans les activités de la vie quotidienne."
  },
  "subject" : {
    "reference" : "Patient/tddui-patient-ins-example"
  }
}

```
