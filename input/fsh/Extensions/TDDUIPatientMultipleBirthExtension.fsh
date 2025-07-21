Extension: TDDUIBirthOrder
Id: tddui-birth-order
Title: "Ordre de naissance dans le registre d'état civil"
Description: "Ordre d’enregistrement de la naissance dans le registre d’état civil de la commune de naissance pour le mois de la naissance. Il compose les 3 derniers chiffres du NIR de l'usager avant la clé de sécurité et permet de distinguer les personnes nées au même lieu et à la même période. Il est obligatoire si le NIR n'est pas transmis."
Context: Patient
* value[x] only positiveInt
