CodeSystem: TDDUIDiscriminator
Id: tddui-discriminator
Title: "TDDUI Discriminator"
Description: "CodeSystem définissant les codes discriminants."
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
* ^caseSensitive = true
* ^compositional = false
* ^content = #complete
* ^experimental = false

* #accordUsager "Accord de l'usager"
* #accordStructure "Accord de la structure"

* #titreObjectif "Titre de l'objectif"
* #avisUsagerObjectif "Avis de l'usager sur l'objectif"
* #strategieMiseEnOeuvreObjectif "Stratégie de mise en œuvre de l'objectif"

* #origineAttente "Acteur (personne physique ou personne morale) qui a un lien avec l'usager ou l'usager elle-même qui définit son attente."
* #commentaireAttente "Permet de compléter ou éclairer la description de l'attente."

* #demandeOrientation "Pièce jointe composant la demande d'orientation."
* #depotPoste "Preuve du dépôt de la poste."
* #reponseOrientation "Réponse de la CDAPH à la demande d'orientation."
* #pieceComplementaire "Pièce(s) complémentaire(s) à la demande d'orientation."