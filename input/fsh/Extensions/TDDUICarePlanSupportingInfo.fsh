Extension: 		TDDUICarePlanSupportingInfo
Id: 			tddui-care-plan-supportinginfo
Title:			"TDDUI CarePlan SupportingInfo"
Description: 	"Extension pour discriminer l'élément CarePlan.supportingInfo."

* ^context.type = #element
* ^context.expression = "CarePlan.supportingInfo"

* value[x] only code
* valueCode from TDDUICarePlanSupportingInfoVS

ValueSet: TDDUICarePlanSupportingInfoVS
Id: tddui-care-plan-supportingInfo-vs
Title: "TDDUI CarePlan supportingInfo ValueSet"
Description: "ValueSet définissant les types de notes pour l'élément CarePlan.supportingInfo."
* include codes from system tddui-care-plan-supportingInfo-cs

CodeSystem: TDDUICarePlanSupportingInfoCS
Id: tddui-care-plan-supportingInfo-cs
Title: "TDDUI CarePlan supportingInfo CodeSystem"
Description: "CodeSystem définissant les types de notes pour l'élément CarePlan.supportingInfo."
* #accordUsager "Accord de l'usager"
* #accordStructure "Accord de la structure"
