Extension: TDDUIStatusAuthor
Id: tddui-status-author
Title: "TDDUI Status Author"
Description: "Extension permettant de représenter la profession du professionnel."
Context: Goal.lifecycleStatus, CarePlan.status, Task.status

* value[x] only Reference
* valueReference ^short = "Auteur du statut."
* valueReference only Reference(TDDUIPractitioner or TDDUIPractitionerRole)