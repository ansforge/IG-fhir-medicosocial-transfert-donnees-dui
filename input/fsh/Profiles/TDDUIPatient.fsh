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
