# tddui-event-location-example - Médicosocial - Transfert de données DUI v2.2.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **tddui-event-location-example**

## Example Location: tddui-event-location-example

Profil: [FR Core Location Profile](https://hl7.fr/ig/fhir/core/2.1.0/StructureDefinition-fr-core-location.html)

**address**: 12 rue des Lilas Vittefleur 76748 FR 



## Resource Content

```json
{
  "resourceType" : "Location",
  "id" : "tddui-event-location-example",
  "meta" : {
    "profile" : [
      "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-location"
    ]
  },
  "address" : {
    "line" : ["12 rue des Lilas"],
    "city" : "Vittefleur",
    "postalCode" : "76748",
    "country" : "FR"
  }
}

```
