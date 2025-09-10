Extension: TDDUIProfession
Id: tddui-profession
Title: "TDDUI Profession"
Description: "Extension permettant de représenter la profession du professionnel."
Context: PractitionerRole.code

* value[x] only CodeableConcept
* valueCodeableConcept ^short = "Profession / Spécialité du professionnel."
* valueCodeableConcept.coding from $JDV-J01-XdsAuthorSpecialty-CISIS
