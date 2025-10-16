Instance: tddui-questionnaire-situation-ssiad
InstanceOf: Questionnaire
Description: "Grille d'évaluation de la situation SSIAD"
Usage: #definition

* title = "Évaluation de la situation SSIAD"
* status = #active
* code = $terminologie-cisis#MED-1290 "Evaluation de la situation SSIAD"

* item[0].type = #boolean
* item[=].linkId = "incontinence"
* item[=].code = $terminologie-cim-10#R32 "Incontinence urinaire, sans précision"
* item[=].text = "Incontinence urinaire, sans précision"
* item[=].required = false
* item[=].repeats = false
* item[+].type = #boolean
* item[=].linkId = "incontinence-fec"
* item[=].code = $terminologie-cim-10#R15 "Incontinence des matières fécales"
* item[=].text = "Incontinence des matières fécales"
* item[=].required = false
* item[=].repeats = false
* item[+].type = #boolean
* item[=].linkId = "obesite"
* item[=].code = $terminologie-cim-10#E66.9 "Obésité, sans précision"
* item[=].text = "Obésité, sans précision"
* item[=].required = false
* item[=].repeats = false
* item[+].type = #boolean
* item[=].linkId = "trouble-cognitif"
* item[=].code = $terminologie-cim-10#F06.7 "Trouble cognitif léger"
* item[=].text = "Trouble cognitif léger"
* item[=].required = false
* item[=].repeats = false
* item[+].type = #boolean
* item[=].linkId = "trouble-personnalite"
* item[=].code = $terminologie-cim-10#F69 "Trouble de la personnalité et du comportement chez l'adulte, sans précision"
* item[=].text = "Trouble de la personnalité et du comportement chez l'adulte, sans précision"
* item[=].required = false
* item[=].repeats = false
* item[+].type = #boolean
* item[=].linkId = "soins-ide"
* item[=].code = $terminologie-cisis#MED-1294 "Soins IDE pour escarres et autres plaies chroniques"
* item[=].text = "Soins IDE pour escarres et autres plaies chroniques"
* item[=].required = false
* item[=].repeats = false
* item[+].type = #boolean
* item[=].linkId = "prise-charge-ide"
* item[=].code = $terminologie-cisis#MED-1295 "Prise en charge IDE du diabète insulinotraité"
* item[=].text = "Prise en charge IDE du diabète insulinotraité"
* item[=].required = false
* item[=].repeats = false
* item[+].type = #boolean
* item[=].linkId = "aucun-motif"
* item[=].code = $terminologie-cisis#GEN-365 "Aucun de ces motifs"
* item[=].text = "Aucun de ces motifs"
* item[=].required = false
* item[=].repeats = false
