# tddui-related-person-contact-example - Médicosocial - Transfert de données DUI v2.2.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **tddui-related-person-contact-example**

## Example RelatedPerson: tddui-related-person-contact-example

Profil: [TDDUI RelatedPerson Contact](StructureDefinition-tddui-related-person-contact.md)

**identifier**: 3480787529/123456789-PPAttente-1234-enfant

**patient**: [DUPONT Male, Date de Naissance :1947-04-03 ( Patient internal identifier: 3480787529/194704032)](Patient-tddui-patient-ins-example.md)

**relationship**: aidé, Enfant



## Resource Content

```json
{
  "resourceType" : "RelatedPerson",
  "id" : "tddui-related-person-contact-example",
  "meta" : {
    "profile" : [
      "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-related-person-contact"
    ]
  },
  "identifier" : [
    {
      "value" : "3480787529/123456789-PPAttente-1234-enfant"
    }
  ],
  "patient" : {
    "reference" : "Patient/tddui-patient-ins-example"
  },
  "relationship" : [
    {
      "coding" : [
        {
          "system" : "https://mos.esante.gouv.fr/NOS/TRE_R260-HL7RoleClass/FHIR/TRE-R260-HL7RoleClass",
          "code" : "PAT",
          "display" : "aidé"
        }
      ]
    },
    {
      "coding" : [
        {
          "system" : "https://mos.esante.gouv.fr/NOS/TRE_R216-HL7RoleCode/FHIR/TRE-R216-HL7RoleCode",
          "code" : "CHILD",
          "display" : "Enfant"
        }
      ]
    }
  ]
}

```
