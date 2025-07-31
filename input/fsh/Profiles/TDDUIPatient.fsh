Profile: TDDUIPatient
Parent: FRCorePatientProfile
Id: tddui-patient
Title: "TDDUI Patient"
Description: "Profil de la ressource FrCorePatientProfile permettant de représenter un usager lorsque l'INS n'est pas transmis."

* insert TDDUIPatientIdSlices
* birthDate.extension contains
    TDDUIBirthOrder named tddui-birth-order 1..1

* birthDate.extension[tddui-birth-order] ^short = "Ordre d’enregistrement de la naissance dans le registre d’état civil de la commune de naissance pour le mois de la naissance. Il compose les 3 derniers chiffres du NIR de l'usager avant la clé de sécurité et permet de distinguer les personnes nées au même lieu et à la même période.  Il est obligatoire si le NIR n'est pas transmis."

* gender from fr-core-vs-patient-gender-INS (required)
* gender ^short = "male | female | unknown"

* name[officialName] 1..1
* name[usualName] 0..1
* name only tddui-humanname

Mapping:  ConceptMetier_TDDUIPatient
Source:   TDDUIPatient
Target: "https://interop.esante.gouv.fr/ig/fhir/tddui/sfe_modelisation_contenu.html"
Id:       specmetier-to-TDDUIPatient
Title:    "Modèle de contenu DUI"
* -> "Usager"
 
* identifier[NSS] -> "numSecuriteSociale"
* identifier[PI] -> "identifiantLocalUsagerESSMS"
* identifier[InitialNumberMDPH] -> "numeroIndividuInitial"
* name[officialName].family -> "nomNaissance"
* name[usualName].family -> "nomUsage"
* name[officialName].given -> "premierPrenomActeNaissance"
* name[usualName].given -> "prenomUtilise"
* name[officialName].extension[birth-list-given-name] -> "prenom"
* name[officialName].prefix -> "civilite"
* gender -> "sexe"
* birthDate -> "dateNaissance"
* birthDate.extension[tddui-birth-order] -> "ordreNaissance"
* extension[birthPlace].valueAddress.extension[inseeCode] -> "communeNaissance"
* extension[birthPlace].valueAddress.country -> "paysNaissance"

