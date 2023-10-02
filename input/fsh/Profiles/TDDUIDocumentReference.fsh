Profile: TDDUIDocumentReference
Parent: DocumentReference
Id: tddui-documentreference
Title: "TDDUI Document Reference"
Description: "Profil générique créé dans le contexte du transfert de données DUI pour véhiculer un document au format CDA, inclus dans DocumentReference.attachment.data." 

/* MHD */

* modifierExtension 0..0
* masterIdentifier 1..1
* identifier 0..0
* status 1..1
* status = http://hl7.org/fhir/document-reference-status#current
* docStatus 0..0
* type 0..1 MS
* category 0..1 MS
* subject only Reference(Patient)
* date 0..1 MS
* author 0..* MS
* authenticator 0..1
* relatesTo 0..* MS
* description 0..1
* securityLabel 0..* MS
* content 1..1
* content ^definition = "The document and format referenced."
* content.attachment.contentType 1..1
* content.attachment.language 0..1 MS
* content.attachment.data 1..1
* content.attachment.url 0..0
* content.attachment.size 0..1
* content.attachment.hash 0..1
* content.attachment.title 0..1
* content.attachment.creation 0..1 MS
* content.format 0..1 MS
* context.event 0..*
* context.period 0..1 MS
* context.facilityType 0..1 MS
* context.practiceSetting 0..1 MS
* context.sourcePatientInfo 0..1 MS
* context.related 0..*


/* PDSm */

* meta.versionId MS
* meta.versionId ^short = "Numéro de version de la fiche d’un document attribué par le système cible. La valeur de la métadonnée version est égale à 1 pour la première version de la fiche. Cet élément est requis lorsque le flux envoyé correspond à une mise à jour des données d’une fiche."

* masterIdentifier MS
* masterIdentifier ^short = "Représente l’identifiant unique global affecté au document par son créateur. Il est utilisable comme référence externe dans d’autres documents."

* identifier MS

* status MS
* status = http://hl7.org/fhir/document-reference-status#current

* type MS
* type from $JDV-J07-XdsTypeCode-CISIS (preferred)
* type ^definition = "Représente le type du document."
* type obeys constr-bind-type

* category MS
* category from $JDV-J06-XdsClassCode-CISIS (preferred)
* category ^short = "Représente la classe du document (compte rendu, imagerie médicale, traitement, certificat,...)."
* category obeys constr-bind-category

* date MS
* date ^short = "Représente la date de création de la ressource DocumentReference dans FHIR"

* author MS
* author ^short = "Personnes physiques ou morales et/ou les dispositifs auteurs d'un document."

* authenticator MS
* authenticator 0..1
* authenticator ^short = "Cet attribut représente l’acteur validant le document et prenant la responsabilité du contenu médical de celui-ci. Il peut s’agir de l’auteur du document si celui-ci est une personne et s’il endosse la responsabilité du contenu médical de ses documents. Si l’auteur est un dispositif, cet attribut doit représenter la personne responsable de l’action effectuée par le dispositif."

* description MS
* description ^short = "Commentaire associé au document."

* securityLabel obeys constr-bind-securityLabel
* securityLabel ^short = "Contient les informations définissant le niveau de confidentialité d'un document."

// ###########
// # CONTENT #
// ###########
* content MS
* content ^short = "Document contenu."

* content.attachment.language ^short = "Pour tous les documents produits par les systèmes initiateurs français, le code est \"fr-FR'."

* content.attachment.data ^short = "Le document est contenu dans l'élément .data au format base64."

* content.attachment.size ^short = "Représente la taille du document."

* content.attachment.hash ^short = "Représente le résultat de hachage du document (SHA 1)."
* content.attachment.title 1..

* content.attachment.creation ^short = "Représente la date et l’heure de création du document."

* content.format from $JDV-J10-XdsFormatCode-CISIS (preferred)
* content.format obeys constr-bind-format
* content.format ^short = "Format technique détaillé du document."

// ###########
// # CONTEXT #
// ###########
* context MS
* context.event ..1
* context.event obeys constr-bind-context-event
* context.event ^short = "Représente les actes et les pathologies en rapport avec le document."

* context.facilityType from $JDV-J02-XdsHealthcareFacilityTypeCode-CISIS (preferred)
* context.facilityType obeys constr-bind-ProducteurDoc-simplified
* context.facilityType ^short = "Secteur d'activité lié à la prise en charge de la personne, en lien avec le document produit."

* context.practiceSetting from $JDV-J04-XdsPracticeSettingCode-CISIS (preferred)
* context.practiceSetting obeys constr-bind-ProducteurDoc-simplified
* context.practiceSetting ^short = "Cadre d’exercice de l’acte qui a engendré la création du document."

* context.sourcePatientInfo only Reference(FrPatient)
* context.sourcePatientInfo ^short = "Référence vers la ressource Patient titulaire du dossier."


Invariant: constr-bind-ProducteurDoc-simplified
Description: "L’utilisation de cette nomenclature est recommandée mais non obligatoire (prefered) :
-	TRE_R02-SecteurActivite, OID : 1.2.250.1.71.4.2.4 (lorsque l’auteur du document est un professionnel ou un équipement sous sa responsabilité)
Les valeurs possibles peuvent être restreintes en fonction du jeu de valeurs correspondant mis à disposition par le projet (exemple : JDV_J61-HealthcareFacilityTypeCode-DMP).
En l’absence de spécifications complémentaires, le jeu de valeurs JDV_J02-XdsHealthcareFacilityTypeCode-CISIS peut être utilisé."
Expression:       "f:context/f:practiceSetting or f:context/f:facilityType"
Severity:    #error

Invariant:   constr-bind-type
Description: "Les valeurs possibles pour cet élément doivent provenir d’une des terminologies de référence suivantes :
\r\n TRE_A05-TypeDocComplementaireCISIS, OID : 1.2.250.1.213.1.1.4.12
\r\n TRE_A04-TypeDocument-LOINC, OID : 2.16.840.1.113883.6.1
\r\n TRE_A12-NomenclatureASTM, OID : ASTM
\r\nLes valeurs possibles peuvent être restreintes en fonction du jeu de valeurs correspondant mis à disposition par le projet (exemple : JDV_J66-TypeCode-DMP).\r\nEn l’absence de spécifications complémentaires, le jeu de valeurs JDV_J07-XdsTypeCode-CISIS peut être utilisé."
Expression:       "f:type"
Severity:    #error

Invariant:   constr-bind-category
Description: "Les valeurs possibles pour cet élément doivent provenir d’une des terminologies de référence suivantes :
-	TRE_A03-ClasseDocument-CISIS, OID : 1.2.250.1.213.1.1.4.1
-	TRE_A10-NomenclatureURN, OID : URN
Les valeurs possibles peuvent être restreintes en fonction du jeu de valeurs correspondant mis à disposition par le projet (exemple : JDV_J57-ClassCode-DMP).
En l’absence de spécifications complémentaires, le jeu de valeurs JDV_J06-XdsClassCode-CISIS peut être utilisé."
Expression:       "f:category"
Severity:    #error

Invariant: constr-bind-format
Description: "Les valeurs possibles pour cet élément doivent provenir d’une des terminologies de référence suivantes :
- TRE_A06-FormatCodeComplementaire, OID : 1.2.250.1.213.1.1.4.2.282
- TRE_A11-IheFormatCode, OID : 1.3.6.1.4.1.19376.1.2.3
- TRE_A09-DICOMuidRegistry, OID : 1.2.840.10008.2.6.1
- TRE_A10-NomenclatureURN, OID : URN
Les valeurs possibles peuvent être restreintes en fonction du jeu de valeurs correspondant mis à disposition par le projet (exemple : JDV_J60-FormatCode-DMP).
En l’absence de spécifications complémentaires, le jeu de valeurs JDV_J10-XdsFormatCode-CISIS peut être utilisé."
Expression:       "f:content/f:format"
Severity:    #error

Invariant: constr-bind-context-event
Description: "Nomenclatures utilisées :
- CCAM pour les actes médicaux (OID=\"1.2.250.1.213.2.5\");
- CIM-10 pour les diagnostics de pathologie (OID=\"2.16.840.1.113883.6.3\").
- TRE_A00-ProducteurDocNonPS pour les documents d'expression personnelle du patient."
Expression:       "f:context/f:event"
Severity:    #error

Invariant: constr-bind-securityLabel
Description: "Les codes pour cet élément doivent provenir du ValueSet spécifié par le standard. Lorsqu’aucun code ne correspond au concept recherché, un code provenant de la terminologie de référence TRE_A07-StatusVisibiliteDocument, OID : 1.2.250.1.213.1.1.4.13 peut être utilisé."
Expression:       "f:securityLabel"
Severity:    #error