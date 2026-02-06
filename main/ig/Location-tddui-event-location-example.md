# TDDUI Event Location Example - Médicosocial - Transfert de données DUI v2.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TDDUI Event Location Example**

## Example Location: TDDUI Event Location Example

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
