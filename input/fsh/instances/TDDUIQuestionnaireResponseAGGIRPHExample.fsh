Instance: tddui-questionnaire-response-aggir-ph
InstanceOf: TDDUIQuestionnaireResponse
Description: "Grille de répponse AGGIR PH"
Usage: #example

* identifier.value = "3480787529/147720425367411-EVAL-21564655"

* questionnaire = "https://interop.esante.gouv.fr/ig/fhir/tddui/Questionnaire/tddui-questionnaire-aggir-ph-ssiad"

* status = #completed
* subject = Reference(tddui-patient-ins-example)

* authored = "2023-04-06"

* source = Reference(tddui-practitioner-example)

* encounter = Reference(tddui-encounter-evenement-example)

* item[0].linkId = "resultat-eval"
* item[=].text = "Résultat évaluation"
* item[=].answer.valueCoding = $terminologie-cisis#MED-340 "GIR-2"
* item[+].linkId = "fonction-pensee"
* item[=].text = "Fonctions de la pensée"
* item[=].answer.valueCoding = #qf2 "facilitateur modéré"
* item[=].answer.item[0].linkId = "pensee-spont"
* item[=].answer.item[=].text = "fait spontanément"
* item[=].answer.item[=].answer.valueBoolean = true
* item[=].answer.item[+].linkId = "pensee-tot"
* item[=].answer.item[=].text = "fait totalement"
* item[=].answer.item[=].answer.valueBoolean = true
* item[=].answer.item[+].linkId = "pensee-correct"
* item[=].answer.item[=].text = "fait correctement"
* item[=].answer.item[=].answer.valueBoolean = false
* item[=].answer.item[+].linkId = "pensee-habit"
* item[=].answer.item[=].text = "fait habituellement"
* item[=].answer.item[=].answer.valueBoolean = false
* item[+].linkId = "fonction-orientation"
* item[=].text = "Fonctions d'orientation"
* item[=].answer.valueCoding = #qf0 "aucun facilitateur"
* item[=].answer.item[0].linkId = "orientation-spont"
* item[=].answer.item[=].text = "fait spontanément"
* item[=].answer.item[=].answer.valueBoolean = false
* item[=].answer.item[+].linkId = "orientation-tot"
* item[=].answer.item[=].text = "fait totalement"
* item[=].answer.item[=].answer.valueBoolean = false
* item[=].answer.item[+].linkId = "orientation-correct"
* item[=].answer.item[=].text = "fait correctement"
* item[=].answer.item[=].answer.valueBoolean = false
* item[=].answer.item[+].linkId = "orientation-habit"
* item[=].answer.item[=].text = "fait habituellement"
* item[=].answer.item[=].answer.valueBoolean = false
* item[+].linkId = "se-laver"
* item[=].text = "Se laver"
* item[=].answer.valueCoding = #qf4 "facilitateur absolu"
* item[=].answer.item[0].linkId = "laver-spont"
* item[=].answer.item[=].text = "fait spontanément"
* item[=].answer.item[=].answer.valueBoolean = true
* item[=].answer.item[+].linkId = "laver-tot"
* item[=].answer.item[=].text = "fait totalement"
* item[=].answer.item[=].answer.valueBoolean = true
* item[=].answer.item[+].linkId = "laver-correct"
* item[=].answer.item[=].text = "fait correctement"
* item[=].answer.item[=].answer.valueBoolean = true
* item[=].answer.item[+].linkId = "laver-commentaire"
* item[=].answer.item[=].text = "fait habituellement"
* item[=].answer.item[=].answer.valueBoolean = true
* item[+].linkId = "habiller"
* item[=].text = "S'habiller"
* item[=].answer.valueCoding = #qf0 "aucun facilitateur"
* item[=].answer.item[0].linkId = "habiller-spont"
* item[=].answer.item[=].text = "fait spontanément"
* item[=].answer.item[=].answer.valueBoolean = false
* item[=].answer.item[+].linkId = "habiller-tot"
* item[=].answer.item[=].text = "fait totalement"
* item[=].answer.item[=].answer.valueBoolean = false
* item[=].answer.item[+].linkId = "habiller-correct"
* item[=].answer.item[=].text = "fait correctement"
* item[=].answer.item[=].answer.valueBoolean = false
* item[=].answer.item[+].linkId = "habiller-habit"
* item[=].answer.item[=].text = "fait habituellement"
* item[=].answer.item[=].answer.valueBoolean = false
* item[+].linkId = "manger"
* item[=].text = "Manger"
* item[=].answer.valueCoding = #qf2 "facilitateur modéré"
* item[=].answer.item[0].linkId = "manger-spont"
* item[=].answer.item[=].text = "fait spontanément"
* item[=].answer.item[=].answer.valueBoolean = true
* item[=].answer.item[+].linkId = "manger-tot"
* item[=].answer.item[=].text = "fait totalement"
* item[=].answer.item[=].answer.valueBoolean = false
* item[=].answer.item[+].linkId = "manger-correct"
* item[=].answer.item[=].text = "fait correctement"
* item[=].answer.item[=].answer.valueBoolean = true
* item[=].answer.item[+].linkId = "manger-habit"
* item[=].answer.item[=].text = "fait habituellement"
* item[=].answer.item[=].answer.valueBoolean = false
* item[+].linkId = "toilette"
* item[=].text = "Aller aux toilettes"
* item[=].answer.valueCoding = #qf2 "facilitateur modéré"
* item[=].answer.item[0].linkId = "toilette-spont"
* item[=].answer.item[=].text = "fait spontanément"
* item[=].answer.item[=].answer.valueBoolean = false
* item[=].answer.item[+].linkId = "toilette-tot"
* item[=].answer.item[=].text = "fait totalement"
* item[=].answer.item[=].answer.valueBoolean = true
* item[=].answer.item[+].linkId = "toilette-correct"
* item[=].answer.item[=].text = "fait correctement"
* item[=].answer.item[=].answer.valueBoolean = false
* item[=].answer.item[+].linkId = "toilette-habit"
* item[=].answer.item[=].text = "fait habituellement"
* item[=].answer.item[=].answer.valueBoolean = true
* item[+].linkId = "position-corp"
* item[=].text = "Changer la position corporelle de base"
* item[=].answer.valueCoding = #qf2 "facilitateur modéré"
* item[=].answer.item[0].linkId = "pos-cor-spont"
* item[=].answer.item[=].text = "fait spontanément"
* item[=].answer.item[=].answer.valueBoolean = true
* item[=].answer.item[+].linkId = "pos-cor-tot"
* item[=].answer.item[=].text = "fait totalement"
* item[=].answer.item[=].answer.valueBoolean = true
* item[=].answer.item[+].linkId = "pos-cor-correct"
* item[=].answer.item[=].text = "fait correctement"
* item[=].answer.item[=].answer.valueBoolean = false
* item[=].answer.item[+].linkId = "pos-corp-habit"
* item[=].answer.item[=].text = "fait habituellement"
* item[=].answer.item[=].answer.valueBoolean = false
* item[+].linkId = "deplacer-maison"
* item[=].text = "Se déplacer dans la maison"
* item[=].answer.valueCoding = #qf2 "facilitateur modéré"
* item[=].answer.item[0].linkId = "deplacer-maison-spont"
* item[=].answer.item[=].text = "fait spontanément"
* item[=].answer.item[=].answer.valueBoolean = false
* item[=].answer.item[+].linkId = "deplacer-maison-tot"
* item[=].answer.item[=].text = "fait totalement"
* item[=].answer.item[=].answer.valueBoolean = false
* item[=].answer.item[+].linkId = "deplacer-maison-correct"
* item[=].answer.item[=].text = "fait correctement"
* item[=].answer.item[=].answer.valueBoolean = true
* item[=].answer.item[+].linkId = "deplacer-maison-habit"
* item[=].answer.item[=].text = "fait habituellement"
* item[=].answer.item[=].answer.valueBoolean = true
* item[+].linkId = "deplacer-hors-maison"
* item[=].text = "Se déplacer en dehors de la maison et d'autres bâtiments"
* item[=].answer.valueCoding = #qf4 "facilitateur absolu"
* item[=].answer.item[0].linkId = "deplacer-hors-maison-spont"
* item[=].answer.item[=].text = "fait spontanément"
* item[=].answer.item[=].answer.valueBoolean = true
* item[=].answer.item[+].linkId = "deplacer-hors-maison-tot"
* item[=].answer.item[=].text = "fait totalement"
* item[=].answer.item[=].answer.valueBoolean = true
* item[=].answer.item[+].linkId = "deplacer-hors-maison-correct"
* item[=].answer.item[=].text = "fait correctement"
* item[=].answer.item[=].answer.valueBoolean = true
* item[=].answer.item[+].linkId = "deplacer-hors-maison-habit"
* item[=].answer.item[=].text = "fait habituellement"
* item[=].answer.item[=].answer.valueBoolean = true
* item[+].linkId = "appareil"
* item[=].text = "Utiliser d'autres appareils et techniques de communication précisés"
* item[=].answer.valueCoding = #qf2 "facilitateur modéré"
* item[=].answer.item[0].linkId = "appareil-spont"
* item[=].answer.item[=].text = "fait spontanément"
* item[=].answer.item[=].answer.valueBoolean = false
* item[=].answer.item[+].linkId = "appareil-tot"
* item[=].answer.item[=].text = "fait totalement"
* item[=].answer.item[=].answer.valueBoolean = true
* item[=].answer.item[+].linkId = "appareil-correct"
* item[=].answer.item[=].text = "fait correctement"
* item[=].answer.item[=].answer.valueBoolean = false
* item[=].answer.item[+].linkId = "appareil-habit"
* item[=].answer.item[=].text = "fait habituellement"
* item[=].answer.item[=].answer.valueBoolean = false
