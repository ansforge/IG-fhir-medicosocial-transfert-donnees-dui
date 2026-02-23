Extension: TDDUIStatusAuthor
Id: tddui-status-author
Title: "TDDUI Status Author"
Description: "Extension permettant de représenter l'auteur du statut."
Context: Goal.lifecycleStatus, CarePlan.status, Task.status, Encounter.status

* value[x] only Reference
* valueReference ^short = "Auteur du statut."
* valueReference only Reference(TDDUIPractitioner or TDDUIPractitionerRole)