Instance: tddui-questionnaire-response-aggir-ph-example
InstanceOf: TDDUIQuestionnaireResponse
Description: "Grille de réponse AGGIR PH"
Usage: #example

* identifier.value = "3480787529/147720425367411-EVAL-21564656"
* identifier.system = "https://identifiant-medicosocial-evaluation.esante.gouv.fr"

* questionnaire = "https://interop.esante.gouv.fr/ig/fhir/tddui/Questionnaire/tddui-questionnaire-aggir-ph-ssiad"

* status = #completed
* subject = Reference(tddui-patient-ins-example)

* authored = "2023-04-06"

* source = Reference(tddui-practitioner-example)

* encounter = Reference(tddui-encounter-evenement-example)

* item.linkId = "resultat-eval"
* item.text = "Résultat évaluation"
* item.answer.valueCoding = $terminologie-cisis#MED-340 "GIR-2"
* item.answer.item[0].linkId = "fonction-pensee"
* item.answer.item[=].text = "Fonctions de la pensée"
* item.answer.item[=].answer.valueCoding = $icf#qf0 "aucun facilitateur"
* item.answer.item[=].answer.item[0].linkId = "pensee-spont"
* item.answer.item[=].answer.item[=].text = "fait spontanément"
* item.answer.item[=].answer.item[=].answer.valueBoolean = true
* item.answer.item[=].answer.item[+].linkId = "pensee-tot"
* item.answer.item[=].answer.item[=].text = "fait totalement"
* item.answer.item[=].answer.item[=].answer.valueBoolean = true
* item.answer.item[=].answer.item[+].linkId = "pensee-correct"
* item.answer.item[=].answer.item[=].text = "fait correctement"
* item.answer.item[=].answer.item[=].answer.valueBoolean = true
* item.answer.item[=].answer.item[+].linkId = "pensee-habit"
* item.answer.item[=].answer.item[=].text = "fait habituellement"
* item.answer.item[=].answer.item[=].answer.valueBoolean = true
* item.answer.item[+].linkId = "fonction-orientation"
* item.answer.item[=].text = "Fonctions d'orientation"
* item.answer.item[=].answer.valueCoding = $icf#qf0 "aucun facilitateur"
* item.answer.item[=].answer.item[0].linkId = "orientation-spont"
* item.answer.item[=].answer.item[=].text = "fait spontanément"
* item.answer.item[=].answer.item[=].answer.valueBoolean = true
* item.answer.item[=].answer.item[+].linkId = "orientation-tot"
* item.answer.item[=].answer.item[=].text = "fait totalement"
* item.answer.item[=].answer.item[=].answer.valueBoolean = true
* item.answer.item[=].answer.item[+].linkId = "orientation-correct"
* item.answer.item[=].answer.item[=].text = "fait correctement"
* item.answer.item[=].answer.item[=].answer.valueBoolean = true
* item.answer.item[=].answer.item[+].linkId = "orientation-habit"
* item.answer.item[=].answer.item[=].text = "fait habituellement"
* item.answer.item[=].answer.item[=].answer.valueBoolean = true
* item.answer.item[+].linkId = "se-laver"
* item.answer.item[=].text = "Se laver"
* item.answer.item[=].answer.valueCoding = $icf#qf4 "facilitateur absolu"
* item.answer.item[=].answer.item[0].linkId = "laver-spont"
* item.answer.item[=].answer.item[=].text = "fait spontanément"
* item.answer.item[=].answer.item[=].answer.valueBoolean = false
* item.answer.item[=].answer.item[+].linkId = "laver-tot"
* item.answer.item[=].answer.item[=].text = "fait totalement"
* item.answer.item[=].answer.item[=].answer.valueBoolean = false
* item.answer.item[=].answer.item[+].linkId = "laver-correct"
* item.answer.item[=].answer.item[=].text = "fait correctement"
* item.answer.item[=].answer.item[=].answer.valueBoolean = false
* item.answer.item[=].answer.item[+].linkId = "laver-habit"
* item.answer.item[=].answer.item[=].text = "fait habituellement"
* item.answer.item[=].answer.item[=].answer.valueBoolean = false
* item.answer.item[+].linkId = "s'habiller"
* item.answer.item[=].text = "S'habiller"
* item.answer.item[=].answer.valueCoding = $icf#qf4 "facilitateur absolu"
* item.answer.item[=].answer.item[0].linkId = "habiller-spont"
* item.answer.item[=].answer.item[=].text = "fait spontanément"
* item.answer.item[=].answer.item[=].answer.valueBoolean = false
* item.answer.item[=].answer.item[+].linkId = "habiller-tot"
* item.answer.item[=].answer.item[=].text = "fait totalement"
* item.answer.item[=].answer.item[=].answer.valueBoolean = false
* item.answer.item[=].answer.item[+].linkId = "habiller-correct"
* item.answer.item[=].answer.item[=].text = "fait correctement"
* item.answer.item[=].answer.item[=].answer.valueBoolean = false
* item.answer.item[=].answer.item[+].linkId = "habiller-habit"
* item.answer.item[=].answer.item[=].text = "fait habituellement"
* item.answer.item[=].answer.item[=].answer.valueBoolean = false
* item.answer.item[+].linkId = "manger"
* item.answer.item[=].text = "Manger"
* item.answer.item[=].answer.valueCoding = $icf#qf2 "facilitateur modéré"
* item.answer.item[=].answer.item[0].linkId = "manger-spont"
* item.answer.item[=].answer.item[=].text = "fait spontanément"
* item.answer.item[=].answer.item[=].answer.valueBoolean = true
* item.answer.item[=].answer.item[+].linkId = "manger-tot"
* item.answer.item[=].answer.item[=].text = "fait totalement"
* item.answer.item[=].answer.item[=].answer.valueBoolean = false
* item.answer.item[=].answer.item[+].linkId = "manger-correct"
* item.answer.item[=].answer.item[=].text = "fait correctement"
* item.answer.item[=].answer.item[=].answer.valueBoolean = true
* item.answer.item[=].answer.item[+].linkId = "manger-habit"
* item.answer.item[=].answer.item[=].text = "fait habituellement"
* item.answer.item[=].answer.item[=].answer.valueBoolean = true
* item.answer.item[+].linkId = "aller-aux-toilettes"
* item.answer.item[=].text = "Aller aux toilettes"
* item.answer.item[=].answer.valueCoding = $icf#qf2 "facilitateur modéré"
* item.answer.item[=].answer.item[0].linkId = "toilette-spont"
* item.answer.item[=].answer.item[=].text = "fait spontanément"
* item.answer.item[=].answer.item[=].answer.valueBoolean = true
* item.answer.item[=].answer.item[+].linkId = "toilette-tot"
* item.answer.item[=].answer.item[=].text = "fait totalement"
* item.answer.item[=].answer.item[=].answer.valueBoolean = false
* item.answer.item[=].answer.item[+].linkId = "toilette-correct"
* item.answer.item[=].answer.item[=].text = "fait correctement"
* item.answer.item[=].answer.item[=].answer.valueBoolean = true
* item.answer.item[=].answer.item[+].linkId = "toilette-habit"
* item.answer.item[=].answer.item[=].text = "fait habituellement"
* item.answer.item[=].answer.item[=].answer.valueBoolean = true
* item.answer.item[+].linkId = "position-corps"
* item.answer.item[=].text = "Changer la position corporelle de base"
* item.answer.item[=].answer.valueCoding = $icf#qf4 "facilitateur absolu"
* item.answer.item[=].answer.item[0].linkId = "position-corps-spont"
* item.answer.item[=].answer.item[=].text = "fait spontanément"
* item.answer.item[=].answer.item[=].answer.valueBoolean = false
* item.answer.item[=].answer.item[+].linkId = "position-corps-tot"
* item.answer.item[=].answer.item[=].text = "fait totalement"
* item.answer.item[=].answer.item[=].answer.valueBoolean = false
* item.answer.item[=].answer.item[+].linkId = "position-corps-correct"
* item.answer.item[=].answer.item[=].text = "fait correctement"
* item.answer.item[=].answer.item[=].answer.valueBoolean = false
* item.answer.item[=].answer.item[+].linkId = "position-corps-habit"
* item.answer.item[=].answer.item[=].text = "fait habituellement"
* item.answer.item[=].answer.item[=].answer.valueBoolean = false
* item.answer.item[+].linkId = "deplacer-maison"
* item.answer.item[=].text = "Se déplacer dans la maison"
* item.answer.item[=].answer.valueCoding = $icf#qf4 "facilitateur absolu"
* item.answer.item[=].answer.item[0].linkId = "deplacer-maison-spont"
* item.answer.item[=].answer.item[=].text = "fait spontanément"
* item.answer.item[=].answer.item[=].answer.valueBoolean = false
* item.answer.item[=].answer.item[+].linkId = "deplacer-maison-tot"
* item.answer.item[=].answer.item[=].text = "fait totalement"
* item.answer.item[=].answer.item[=].answer.valueBoolean = false
* item.answer.item[=].answer.item[+].linkId = "deplacer-maison-correct"
* item.answer.item[=].answer.item[=].text = "fait correctement"
* item.answer.item[=].answer.item[=].answer.valueBoolean = false
* item.answer.item[=].answer.item[+].linkId = "deplacer-maison-habit"
* item.answer.item[=].answer.item[=].text = "fait habituellement"
* item.answer.item[=].answer.item[=].answer.valueBoolean = false
* item.answer.item[+].linkId = "deplacer-hors-maison"
* item.answer.item[=].text = "Se déplacer en dehors de la maison et d'autres bâtiments"
* item.answer.item[=].answer.valueCoding = $icf#qf4 "facilitateur absolu"
* item.answer.item[=].answer.item[0].linkId = "deplacer-hors-maison-spont"
* item.answer.item[=].answer.item[=].text = "fait spontanément"
* item.answer.item[=].answer.item[=].answer.valueBoolean = false
* item.answer.item[=].answer.item[+].linkId = "deplacer-hors-maison-tot"
* item.answer.item[=].answer.item[=].text = "fait totalement"
* item.answer.item[=].answer.item[=].answer.valueBoolean = false
* item.answer.item[=].answer.item[+].linkId = "deplacer-hors-maison-correct"
* item.answer.item[=].answer.item[=].text = "fait correctement"
* item.answer.item[=].answer.item[=].answer.valueBoolean = false
* item.answer.item[=].answer.item[+].linkId = "deplacer-hors-maison-habit"
* item.answer.item[=].answer.item[=].text = "fait habituellement"
* item.answer.item[=].answer.item[=].answer.valueBoolean = false
* item.answer.item[+].linkId = "appareil-communication"
* item.answer.item[=].text = "Utiliser d'autres appareils et techniques de communication précisés"
* item.answer.item[=].answer.valueCoding = $icf#qf0 "aucun facilitateur"
* item.answer.item[=].answer.item[0].linkId = "appareil-spont"
* item.answer.item[=].answer.item[=].text = "fait spontanément"
* item.answer.item[=].answer.item[=].answer.valueBoolean = true
* item.answer.item[=].answer.item[+].linkId = "appareil-tot"
* item.answer.item[=].answer.item[=].text = "fait totalement"
* item.answer.item[=].answer.item[=].answer.valueBoolean = true
* item.answer.item[=].answer.item[+].linkId = "appareil-correct"
* item.answer.item[=].answer.item[=].text = "fait correctement"
* item.answer.item[=].answer.item[=].answer.valueBoolean = true
* item.answer.item[=].answer.item[+].linkId = "appareil-habit"
* item.answer.item[=].answer.item[=].text = "fait habituellement"
* item.answer.item[=].answer.item[=].answer.valueBoolean = true
