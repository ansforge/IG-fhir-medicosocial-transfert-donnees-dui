Profile: TDDUIBundle
Parent: Bundle
Id: tddui-bundle
Title: "TDDUI Bundle"
Description: "Profil générique créé pour transmettre des données d'un logiciel DUI." 

* type = #transaction

* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.description = "Slicing based on the profile conformance of the entry"
* entry contains 
    DUIPatient 0..* and
    DUIPatientINS 0..* and 
    DUIOrganization 0..* and
    DUIEncounterSejour 0..* and
    DUIEncounterEvenement 0..* and
    DUIPractitioner 0..* and
    DUIPractitionerRole 0..* and
    DUITransportProfessionnel 0..* and
    DUITransportUsager 0..* and
    DUIDocumentReference 0..* and
    DUIQuestionnaireResponse 0..* and 
    DUICarePlanProjetPersonnalise 0..* and
    DUIConsentAccord 0..* and
    DUIGoalAttente 0..* and
    DUIGoalObjectif 0..* and
    DUIServiceRequestBesoin 0..* and
    DUITaskAction 0..* and
    DUITaskBilan 0..* and 
    DUITaskMoyenRessource 0..* and
    DUITaskPrestation 0..*


* entry[DUIPatient].resource only TDDUIPatient
* entry[DUIPatient] ^short = "Patient conforming to the TDDUIPatient profile, used to convey patients without an INS identity."
* entry[DUIPatient].resource 1..1
* entry[DUIPatient].request 1..1
* entry[DUIPatient].request.method = #POST

* entry[DUIPatientINS].resource only TDDUIPatientINS
* entry[DUIPatientINS] ^short = "Patient conforming to the TDDUIPatientINS profile, used to convey patients identified by an INS identity."
* entry[DUIPatientINS].resource 1..1
* entry[DUIPatientINS].request 1..1
* entry[DUIPatientINS].request.method = #POST

* entry[DUIOrganization].resource only TDDUIOrganization
* entry[DUIOrganization] ^short = "Organization conforming to the TDDUIOrganization profile, used to convey the responsible organization."
* entry[DUIOrganization].resource 1..1
* entry[DUIOrganization].request 1..1
* entry[DUIOrganization].request.method = #POST

* entry[DUIEncounterSejour].resource only TDDUIEncounterSejour
* entry[DUIEncounterSejour] ^short = "Encounter conforming to the TDDUIEncounterSejour profile, used to convey the patient's stay."
* entry[DUIEncounterSejour].resource 1..1
* entry[DUIEncounterSejour].request 1..1
* entry[DUIEncounterSejour].request.method = #POST

* entry[DUIEncounterEvenement].resource only TDDUIEncounterEvenement
* entry[DUIEncounterEvenement] ^short = "Encounter conforming to the TDDUIEncounterEvenement profile, used to convey event linked to the patient patient's stay."
* entry[DUIEncounterEvenement].resource 1..1
* entry[DUIEncounterEvenement].request 1..1
* entry[DUIEncounterEvenement].request.method = #POST

* entry[DUIPractitioner].resource only TDDUIPractitioner
* entry[DUIPractitioner] ^short = "Practitioner conforming to the TDDUIPractitioner profile, used to convey the practitioner."
* entry[DUIPractitioner].resource 1..1
* entry[DUIPractitioner].request 1..1
* entry[DUIPractitioner].request.method = #POST

* entry[DUIPractitionerRole].resource only TDDUIPractitionerRole
* entry[DUIPractitionerRole] ^short = "PractitionerRole conforming to the TDDUIPractitionerRole profile, used to convey the practitioner."
* entry[DUIPractitionerRole].resource 1..1
* entry[DUIPractitionerRole].request 1..1
* entry[DUIPractitionerRole].request.method = #POST

* entry[DUITransportProfessionnel].resource only TDDUITaskTransportProfessionnel
* entry[DUITransportProfessionnel] ^short = "Task conforming to the TDDUITaskTransportProfessionnel profile, used to convey the practitioner transportation."
* entry[DUITransportProfessionnel].resource 1..1
* entry[DUITransportProfessionnel].request 1..1
* entry[DUITransportProfessionnel].request.method = #POST

* entry[DUITransportUsager].resource only TDDUITaskTransportUsager
* entry[DUITransportUsager] ^short = "Task conforming to the TDDUITaskTransportUsager profile, used to convey the patient transportation."
* entry[DUITransportUsager].resource 1..1
* entry[DUITransportUsager].request 1..1
* entry[DUITransportUsager].request.method = #POST

* entry[DUIDocumentReference].resource only TDDUIDocumentReference
* entry[DUIDocumentReference]. ^short = "DocumentReference conforming to the TDDUIDocumentReference profile, used to convey evaluation attachement"
* entry[DUIDocumentReference].resource 1..1
* entry[DUIDocumentReference].request 1..1
* entry[DUIDocumentReference].request.method = #POST

* entry[DUIQuestionnaireResponse].resource only TDDUIQuestionnaireResponse
* entry[DUIQuestionnaireResponse]. ^short = "QuestionnaireResponse conforming to the TDDUIQuestionnaireResponse profile, used to convey the evaluation"
* entry[DUIQuestionnaireResponse].resource 1..1
* entry[DUIQuestionnaireResponse].request 1..1
* entry[DUIQuestionnaireResponse].request.method = #POST

* entry[DUICarePlanProjetPersonnalise].resource only TDDUICarePlanProjetPersonnalise
* entry[DUICarePlanProjetPersonnalise]. ^short = "CarePlan conforming to the TDDUICarePlanProjetPersonnalise profile, used to convey the personalized care plan"
* entry[DUICarePlanProjetPersonnalise].resource 1..1
* entry[DUICarePlanProjetPersonnalise].request 1..1
* entry[DUICarePlanProjetPersonnalise].request.method = #POST

* entry[DUIConsentAccord].resource only TDDUIConsentAccord
* entry[DUIConsentAccord]. ^short = "Consent conforming to the TDDUIConsentAccord profile, used to document the patient’s and the organization’s agreement"
* entry[DUIConsentAccord].resource 1..1
* entry[DUIConsentAccord].request 1..1
* entry[DUIConsentAccord].request.method = #POST

* entry[DUIGoalAttente].resource only TDDUIGoalAttente
* entry[DUIGoalAttente]. ^short = "Goal conforming to the TDDUIGoalAttente profile, used to convey the patient’s expectations"
* entry[DUIGoalAttente].resource 1..1
* entry[DUIGoalAttente].request 1..1
* entry[DUIGoalAttente].request.method = #POST

* entry[DUIGoalObjectif].resource only TDDUIGoalObjectif
* entry[DUIGoalObjectif]. ^short = "Goal conforming to the TDDUIGoalObjectif profile, used to convey the objectives of the personalized care plan"
* entry[DUIGoalObjectif].resource 1..1
* entry[DUIGoalObjectif].request 1..1
* entry[DUIGoalObjectif].request.method = #POST

* entry[DUIServiceRequestBesoin].resource only TDDUIServiceRequestBesoin
* entry[DUIServiceRequestBesoin]. ^short = "ServiceRequest conforming to the TDDUIServiceRequestBesoin profile, used to convey the needs"
* entry[DUIServiceRequestBesoin].resource 1..1
* entry[DUIServiceRequestBesoin].request 1..1
* entry[DUIServiceRequestBesoin].request.method = #POST

* entry[DUITaskAction].resource only TDDUITaskAction
* entry[DUITaskAction]. ^short = "Task conforming to the TDDUITaskAction profile, used to convey the actions to be performed"
* entry[DUITaskAction].resource 1..1
* entry[DUITaskAction].request 1..1
* entry[DUITaskAction].request.method = #POST

* entry[DUITaskBilan].resource only TDDUITaskBilan
* entry[DUITaskBilan]. ^short = "Task conforming to the TDDUITaskBilan profile, used to convey the summary"
* entry[DUITaskBilan].resource 1..1
* entry[DUITaskBilan].request 1..1
* entry[DUITaskBilan].request.method = #POST

* entry[DUITaskMoyenRessource].resource only TDDUITaskMoyenRessource
* entry[DUITaskMoyenRessource]. ^short = "Task conforming to the TDDUITaskMoyenRessource profile, used to convey the means and resources"
* entry[DUITaskMoyenRessource].resource 1..1
* entry[DUITaskMoyenRessource].request 1..1
* entry[DUITaskMoyenRessource].request.method = #POST

* entry[DUITaskPrestation].resource only TDDUITaskPrestation
* entry[DUITaskPrestation]. ^short = "Task conforming to the TDDUITaskPrestation profile, used to convey the services provided"
* entry[DUITaskPrestation].resource 1..1
* entry[DUITaskPrestation].request 1..1
* entry[DUITaskPrestation].request.method = #POST
