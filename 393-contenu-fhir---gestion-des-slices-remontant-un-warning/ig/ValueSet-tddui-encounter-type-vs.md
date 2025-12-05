# TDDUI Encounter Type ValueSet - Médicosocial - Transfert de données DUI v2.1.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TDDUI Encounter Type ValueSet**

## ValueSet: TDDUI Encounter Type ValueSet 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/tddui/ValueSet/tddui-encounter-type-vs | *Version*:2.1.0-ballot |
| Active as of 2025-12-05 | *Computable Name*:TDDUIEncounterTypeVs |

 
ValueSet for TDDUI Encounter's types 

 **References** 

* [TDDUI Encounter Evenement](StructureDefinition-tddui-encounter-evenement.md)

### Définition logique (CLD)

Profil: [Shareable ValueSet](http://hl7.org/fhir/R4/shareablevalueset.html)

Ce jeu de valeur (ValueSet) inclut les codes selon les règles suivantes :

* Importe tous les codes contenu dans [FR Core ValueSet Encounter type](https://hl7.fr/ig/fhir/core/2.1.0/ValueSet-fr-core-vs-encounter-type.html)
* Importe tous les codes contenu dans [TDDUI SERAFIN ValueSet](ValueSet-tddui-serafin-valueset.md)
* Importe tous les codes contenu dans [JDV Type Evenement Ssiad CISIS](https://interop.esante.gouv.fr/terminologies/1.4.0/ValueSet-jdv-type-evenement-ssiad-cisis.html)
* Inclut tous les codes définis dans [`http://terminology.hl7.org/CodeSystem/data-absent-reason`](http://terminology.hl7.org/7.0.0/CodeSystem-data-absent-reason.html)version 📦1.0.0

 

### Expansion

Expansion effectuée en interne basée sur :

* [codesystem DataAbsentReason v1.0.0 (CodeSystem)](http://terminology.hl7.org/7.0.0/CodeSystem-data-absent-reason.html)
* [codesystem admissionType v2.2.0 (CodeSystem)](http://terminology.hl7.org/5.0.0/CodeSystem-v2-0007.html)
* [codesystem FR Core CodeSystem Type Admission v2.1.0 (CodeSystem)](https://hl7.fr/ig/fhir/core/2.1.0/CodeSystem-fr-core-cs-type-admission.html)
* [codesystem TerminologieCISIS - Terminologie des concepts non trouvés dans les autres terminologies v202510230000 (CodeSystem)](https://interop.esante.gouv.fr/terminologies/1.4.0/CodeSystem-terminologie-cisis.html)
* [codesystem Nomenclature des besoins et des prestations v2023.1.0 (CodeSystem)](https://interop.esante.gouv.fr/terminologies/1.4.0/CodeSystem-terminologie-SERAFINPH.html)
* [valueset FR Core ValueSet Encounter type v2.1.0 (ValueSet)](https://hl7.fr/ig/fhir/core/2.1.0/ValueSet-fr-core-vs-encounter-type.html)
* [valueset TDDUI SERAFIN ValueSet v2.1.0-ballot (ValueSet)](ValueSet-tddui-serafin-valueset.md)
* [valueset JDV_J283_PrestationsIndirects_SERAFIN v20241025120000 (ValueSet)](https://interop.esante.gouv.fr/terminologies/1.4.0/ValueSet-JDV-J283-PrestationsIndirects-SERAFIN.html)
* [valueset JDV_J284_PrestationsDirects_SERAFIN v20241025120000 (ValueSet)](https://interop.esante.gouv.fr/terminologies/1.4.0/ValueSet-JDV-J284-PrestationsDirects-SERAFIN.html)
* [valueset JDV Type Evenement Ssiad CISIS v20250624152100 (ValueSet)](https://interop.esante.gouv.fr/terminologies/1.4.0/ValueSet-jdv-type-evenement-ssiad-cisis.html)

Ce jeu de valeur (ValueSet) contient 27 concepts

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R4/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "tddui-encounter-type-vs",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/ValueSet/tddui-encounter-type-vs",
  "version" : "2.1.0-ballot",
  "name" : "TDDUIEncounterTypeVs",
  "title" : "TDDUI Encounter Type ValueSet",
  "status" : "active",
  "experimental" : false,
  "date" : "2025-12-05T08:38:20+00:00",
  "publisher" : "ANS",
  "contact" : [
    {
      "name" : "ANS",
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://esante.gouv.fr"
        }
      ]
    }
  ],
  "description" : "ValueSet for TDDUI Encounter's types",
  "jurisdiction" : [
    {
      "coding" : [
        {
          "system" : "urn:iso:std:iso:3166",
          "code" : "FR",
          "display" : "FRANCE"
        }
      ]
    }
  ],
  "compose" : {
    "include" : [
      {
        "valueSet" : [
          "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-encounter-type"
        ]
      },
      {
        "valueSet" : [
          "https://interop.esante.gouv.fr/ig/fhir/tddui/ValueSet/tddui-serafin-valueset"
        ]
      },
      {
        "valueSet" : [
          "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-type-evenement-ssiad-cisis"
        ]
      },
      {
        "system" : "http://terminology.hl7.org/CodeSystem/data-absent-reason"
      }
    ]
  }
}

```
