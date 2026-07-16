# TDDUI Discriminator - Médicosocial - Transfert de données DUI v2.4.0-ballot

## CodeSystem: TDDUI Discriminator 

 
CodeSystem définissant les codes discriminants. 

Ce système de codes est référencé dans la définition des ensembles de valeurs suivants :

* [TDDUICarePlanSupportingInfo](ValueSet-tddui-care-plan-supporting-info.md)
* [TDDUIDiscriminator](ValueSet-tddui-discriminator.md)
* [TDDUIGoalAttenteNote](ValueSet-tddui-goal-attente-note.md)
* [TDDUIGoalObjectifNote](ValueSet-tddui-goal-objectif-note.md)
* [TDDUIServiceRequestSupportingInfo](ValueSet-tddui-servicerequest-supportinginfo.md)

-------

 [Description du (des) tableau(x) ci-dessus](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "tddui-discriminator",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablecodesystem"]
  },
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/tddui-discriminator",
  "version" : "2.4.0-ballot",
  "name" : "TDDUIDiscriminator",
  "title" : "TDDUI Discriminator",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-07-16T12:36:44+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "CodeSystem définissant les codes discriminants.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "caseSensitive" : true,
  "compositional" : false,
  "content" : "complete",
  "count" : 11,
  "concept" : [{
    "code" : "accordUsager",
    "display" : "Accord de l'usager"
  },
  {
    "code" : "accordStructure",
    "display" : "Accord de la structure"
  },
  {
    "code" : "titreObjectif",
    "display" : "Titre de l'objectif"
  },
  {
    "code" : "avisUsagerObjectif",
    "display" : "Avis de l'usager sur l'objectif"
  },
  {
    "code" : "strategieMiseEnOeuvreObjectif",
    "display" : "Stratégie de mise en œuvre de l'objectif"
  },
  {
    "code" : "origineAttente",
    "display" : "Acteur (personne physique ou personne morale) qui a un lien avec l'usager ou l'usager elle-même qui définit son attente."
  },
  {
    "code" : "commentaireAttente",
    "display" : "Permet de compléter ou éclairer la description de l'attente."
  },
  {
    "code" : "demandeOrientation",
    "display" : "Pièce jointe composant la demande d'orientation."
  },
  {
    "code" : "depotPoste",
    "display" : "Preuve du dépôt de la poste."
  },
  {
    "code" : "reponseOrientation",
    "display" : "Réponse de la CDAPH à la demande d'orientation."
  },
  {
    "code" : "pieceComplementaire",
    "display" : "Pièce(s) complémentaire(s) à la demande d'orientation."
  }]
}

```
