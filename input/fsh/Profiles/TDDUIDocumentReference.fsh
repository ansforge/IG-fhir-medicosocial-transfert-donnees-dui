Profile: TDDUIDocumentReference
Parent: IHE.MHD.SimplifiedPublish.DocumentReference
Id: tddui-document-reference
Title: "TDDUI DocumentReference"
Description: "Profil de la ressource SimplifiedPublishDocumentReference pour les pièces jointes liées à l’événement et à l'évaluation."
* ^purpose = """
    > **Note** : Le profil TDDUIDocumentReference n'hérite pas du profil PDSm_SimplifiedPublish à cause de la référence vers les profils ASPractitioner et ASPractitionerRole"""
  
* insert PDSM_SimplifiedDR
* context.sourcePatientInfo only Reference(TDDUIPatient or TDDUIPatientINS)