Instance: tddui-questionnaire-response-aggir-pa-example
InstanceOf: TDDUIQuestionnaireResponse
Description: "Grille de réponse AGGIR PA"
Usage: #example

* identifier.value = "3480787529/147720425367411-EVAL-21564655"

* questionnaire = "https://interop.esante.gouv.fr/ig/fhir/tddui/Questionnaire/tddui-questionnaire-aggir-pa-ssiad"

* status = #completed
* subject = Reference(tddui-patient-ins-example)

* authored = "2023-04-06"

* source = Reference(tddui-practitioner-example)

* encounter = Reference(tddui-encounter-evenement-example)

* item[0].linkId = "resultat-eval"
* item[=].text = "Résultat évaluation"
* item[=].answer.valueCoding = $terminologie-cisis#MED-340 "GIR-2"
* item[=].answer.item[0].linkId = "fonction-pensee"
* item[=].answer.item[=].text = "Fonctions de la pensée"
* item[=].answer.item[=].answer.valueCoding = $icf#qf0 "aucun facilitateur"
* item[=].answer.item[=].answer.item[0].linkId = "pensee-spont"
* item[=].answer.item[=].answer.item[=].text = "fait spontanément"
* item[=].answer.item[=].answer.item[=].answer.valueBoolean = true
* item[=].answer.item[=].answer.item[+].linkId = "pensee-tot"
* item[=].answer.item[=].answer.item[=].text = "fait totalement"
* item[=].answer.item[=].answer.item[=].answer.valueBoolean = true
* item[=].answer.item[=].answer.item[+].linkId = "pensee-correct"
* item[=].answer.item[=].answer.item[=].text = "fait correctement"
* item[=].answer.item[=].answer.item[=].answer.valueBoolean = true
* item[=].answer.item[=].answer.item[+].linkId = "pensee-habit"
* item[=].answer.item[=].answer.item[=].text = "fait habituellement"
* item[=].answer.item[=].answer.item[=].answer.valueBoolean = true
* item[=].answer.item[+].linkId = "fonction-orientation"
* item[=].answer.item[=].text = "Fonctions d'orientation"
* item[=].answer.item[=].answer.valueCoding = $icf#qf0 "aucun facilitateur"
* item[=].answer.item[=].answer.item[0].linkId = "orientation-spont"
* item[=].answer.item[=].answer.item[=].text = "fait spontanément"
* item[=].answer.item[=].answer.item[=].answer.valueBoolean = true
* item[=].answer.item[=].answer.item[+].linkId = "orientation-tot"
* item[=].answer.item[=].answer.item[=].text = "fait totalement"
* item[=].answer.item[=].answer.item[=].answer.valueBoolean = true
* item[=].answer.item[=].answer.item[+].linkId = "orientation-correct"
* item[=].answer.item[=].answer.item[=].text = "fait correctement"
* item[=].answer.item[=].answer.item[=].answer.valueBoolean = true
* item[=].answer.item[=].answer.item[+].linkId = "orientation-habit"
* item[=].answer.item[=].answer.item[=].text = "fait habituellement"
* item[=].answer.item[=].answer.item[=].answer.valueBoolean = true
* item[=].answer.item[+].linkId = "se-laver"
* item[=].answer.item[=].text = "Se laver"
* item[=].answer.item[=].answer.valueCoding = $icf#qf4 "facilitateur absolu"
* item[=].answer.item[=].answer.item[0].linkId = "laver-spont"
* item[=].answer.item[=].answer.item[=].text = "fait spontanément"
* item[=].answer.item[=].answer.item[=].answer.valueBoolean = false
* item[=].answer.item[=].answer.item[+].linkId = "laver-tot"
* item[=].answer.item[=].answer.item[=].text = "fait totalement"
* item[=].answer.item[=].answer.item[=].answer.valueBoolean = false
* item[=].answer.item[=].answer.item[+].linkId = "laver-correct"
* item[=].answer.item[=].answer.item[=].text = "fait correctement"
* item[=].answer.item[=].answer.item[=].answer.valueBoolean = false
* item[=].answer.item[=].answer.item[+].linkId = "laver-habit"
* item[=].answer.item[=].answer.item[=].text = "fait habituellement"
* item[=].answer.item[=].answer.item[=].answer.valueBoolean = false
* item[=].answer.item[+].linkId = "prendre-soin"
* item[=].answer.item[=].text = "Prendre soin des parties de son corps"
* item[=].answer.item[=].answer.valueCoding = $icf#qf4 "facilitateur absolu"
* item[=].answer.item[=].answer.item[0].linkId = "prendre-soin-spont"
* item[=].answer.item[=].answer.item[=].text = "fait spontanément"
* item[=].answer.item[=].answer.item[=].answer.valueBoolean = false
* item[=].answer.item[=].answer.item[+].linkId = "prendre-soin-tot"
* item[=].answer.item[=].answer.item[=].text = "fait totalement"
* item[=].answer.item[=].answer.item[=].answer.valueBoolean = false
* item[=].answer.item[=].answer.item[+].linkId = "prendre-soin-correct"
* item[=].answer.item[=].answer.item[=].text = "fait correctement"
* item[=].answer.item[=].answer.item[=].answer.valueBoolean = false
* item[=].answer.item[=].answer.item[+].linkId = "prendre-soin-habit"
* item[=].answer.item[=].answer.item[=].text = "fait habituellement"
* item[=].answer.item[=].answer.item[=].answer.valueBoolean = false
* item[=].answer.item[+].linkId = "mettre-vetement"
* item[=].answer.item[=].text = "Mettre des vêtements"
* item[=].answer.item[=].answer.valueCoding = $icf#qf4 "facilitateur absolu"
* item[=].answer.item[=].answer.item[0].linkId = "mettre-vetement-spont"
* item[=].answer.item[=].answer.item[=].text = "fait spontanément"
* item[=].answer.item[=].answer.item[=].answer.valueBoolean = false
* item[=].answer.item[=].answer.item[+].linkId = "mettre-vetement-tot"
* item[=].answer.item[=].answer.item[=].text = "fait totalement"
* item[=].answer.item[=].answer.item[=].answer.valueBoolean = false
* item[=].answer.item[=].answer.item[+].linkId = "mettre-vetement-correct"
* item[=].answer.item[=].answer.item[=].text = "fait correctement"
* item[=].answer.item[=].answer.item[=].answer.valueBoolean = false
* item[=].answer.item[=].answer.item[+].linkId = "mettre-vetement-habit"
* item[=].answer.item[=].answer.item[=].text = "fait habituellement"
* item[=].answer.item[=].answer.item[=].answer.valueBoolean = false
* item[=].answer.item[+].linkId = "mettre-chaussure"
* item[=].answer.item[=].text = "Mettre des chaussures"
* item[=].answer.item[=].answer.valueCoding = $icf#qf4 "facilitateur absolu"
* item[=].answer.item[=].answer.item[0].linkId = "mettre-chaussure-spont"
* item[=].answer.item[=].answer.item[=].text = "fait spontanément"
* item[=].answer.item[=].answer.item[=].answer.valueBoolean = false
* item[=].answer.item[=].answer.item[+].linkId = "mettre-chaussure-tot"
* item[=].answer.item[=].answer.item[=].text = "fait totalement"
* item[=].answer.item[=].answer.item[=].answer.valueBoolean = false
* item[=].answer.item[=].answer.item[+].linkId = "mettre-chaussure-correct"
* item[=].answer.item[=].answer.item[=].text = "fait correctement"
* item[=].answer.item[=].answer.item[=].answer.valueBoolean = false
* item[=].answer.item[=].answer.item[+].linkId = "mettre-chaussure-habit"
* item[=].answer.item[=].answer.item[=].text = "fait habituellement"
* item[=].answer.item[=].answer.item[=].answer.valueBoolean = false
* item[=].answer.item[+].linkId = "manger"
* item[=].answer.item[=].text = "Manger"
* item[=].answer.item[=].answer.valueCoding = $icf#qf2 "facilitateur modéré"
* item[=].answer.item[=].answer.item[0].linkId = "manger-spont"
* item[=].answer.item[=].answer.item[=].text = "fait spontanément"
* item[=].answer.item[=].answer.item[=].answer.valueBoolean = true
* item[=].answer.item[=].answer.item[+].linkId = "manger-tot"
* item[=].answer.item[=].answer.item[=].text = "fait totalement"
* item[=].answer.item[=].answer.item[=].answer.valueBoolean = false
* item[=].answer.item[=].answer.item[+].linkId = "manger-correct"
* item[=].answer.item[=].answer.item[=].text = "fait correctement"
* item[=].answer.item[=].answer.item[=].answer.valueBoolean = true
* item[=].answer.item[=].answer.item[+].linkId = "manger-habit"
* item[=].answer.item[=].answer.item[=].text = "fait habituellement"
* item[=].answer.item[=].answer.item[=].answer.valueBoolean = true
* item[=].answer.item[+].linkId = "passage-aliment"
* item[=].answer.item[=].text = "Passage des aliments par l'estomac et les intestins"
* item[=].answer.item[=].answer.valueCoding = $icf#qf0 "aucun facilitateur"
* item[=].answer.item[=].answer.item[0].linkId = "passage-aliment-spont"
* item[=].answer.item[=].answer.item[=].text = "fait spontanément"
* item[=].answer.item[=].answer.item[=].answer.valueBoolean = true
* item[=].answer.item[=].answer.item[+].linkId = "passage-aliment-tot"
* item[=].answer.item[=].answer.item[=].text = "fait totalement"
* item[=].answer.item[=].answer.item[=].answer.valueBoolean = true
* item[=].answer.item[=].answer.item[+].linkId = "passage-aliment-correct"
* item[=].answer.item[=].answer.item[=].text = "fait correctement"
* item[=].answer.item[=].answer.item[=].answer.valueBoolean = true
* item[=].answer.item[=].answer.item[+].linkId = "passage-aliment-habit"
* item[=].answer.item[=].answer.item[=].text = "fait habituellement"
* item[=].answer.item[=].answer.item[=].answer.valueBoolean = true
* item[=].answer.item[+].linkId = "assurer-regulation-miction"
* item[=].answer.item[=].text = "Assurer la régulation de la miction"
* item[=].answer.item[=].answer.valueCoding = $icf#qf2 "facilitateur modéré"
* item[=].answer.item[=].answer.item[0].linkId = "miction-spont"
* item[=].answer.item[=].answer.item[=].text = "fait spontanément"
* item[=].answer.item[=].answer.item[=].answer.valueBoolean = true
* item[=].answer.item[=].answer.item[+].linkId = "miction-tot"
* item[=].answer.item[=].answer.item[=].text = "fait totalement"
* item[=].answer.item[=].answer.item[=].answer.valueBoolean = false
* item[=].answer.item[=].answer.item[+].linkId = "miction-correct"
* item[=].answer.item[=].answer.item[=].text = "fait correctement"
* item[=].answer.item[=].answer.item[=].answer.valueBoolean = true
* item[=].answer.item[=].answer.item[+].linkId = "miction-habit"
* item[=].answer.item[=].answer.item[=].text = "fait habituellement"
* item[=].answer.item[=].answer.item[=].answer.valueBoolean = true
* item[=].answer.item[+].linkId = "assurer-regulation-defecation"
* item[=].answer.item[=].text = "Assurer la régulation de la défécation"
* item[=].answer.item[=].answer.valueCoding = $icf#qf2 "facilitateur modéré"
* item[=].answer.item[=].answer.item[0].linkId = "defecation-spont"
* item[=].answer.item[=].answer.item[=].text = "fait spontanément"
* item[=].answer.item[=].answer.item[=].answer.valueBoolean = true
* item[=].answer.item[=].answer.item[+].linkId = "defecation-tot"
* item[=].answer.item[=].answer.item[=].text = "fait totalement"
* item[=].answer.item[=].answer.item[=].answer.valueBoolean = false
* item[=].answer.item[=].answer.item[+].linkId = "defecation-correct"
* item[=].answer.item[=].answer.item[=].text = "fait correctement"
* item[=].answer.item[=].answer.item[=].answer.valueBoolean = true
* item[=].answer.item[=].answer.item[+].linkId = "defecation-habit"
* item[=].answer.item[=].answer.item[=].text = "fait habituellement"
* item[=].answer.item[=].answer.item[=].answer.valueBoolean = true
* item[=].answer.item[+].linkId = "pos-corps"
* item[=].answer.item[=].text = "Changer la position corporelle de base"
* item[=].answer.item[=].answer.valueCoding = $icf#qf4 "facilitateur absolu"
* item[=].answer.item[=].answer.item[0].linkId = "pos-corps-spont"
* item[=].answer.item[=].answer.item[=].text = "fait spontanément"
* item[=].answer.item[=].answer.item[=].answer.valueBoolean = false
* item[=].answer.item[=].answer.item[+].linkId = "pos-corps-tot"
* item[=].answer.item[=].answer.item[=].text = "fait totalement"
* item[=].answer.item[=].answer.item[=].answer.valueBoolean = false
* item[=].answer.item[=].answer.item[+].linkId = "pos-corps-correct"
* item[=].answer.item[=].answer.item[=].text = "fait correctement"
* item[=].answer.item[=].answer.item[=].answer.valueBoolean = false
* item[=].answer.item[=].answer.item[+].linkId = "pos-corps-habit"
* item[=].answer.item[=].answer.item[=].text = "fait habituellement"
* item[=].answer.item[=].answer.item[=].answer.valueBoolean = false
* item[=].answer.item[+].linkId = "deplacer-maison"
* item[=].answer.item[=].text = "Se déplacer dans la maison"
* item[=].answer.item[=].answer.valueCoding = $icf#qf4 "facilitateur absolu"
* item[=].answer.item[=].answer.item[0].linkId = "deplacer-maison-spont"
* item[=].answer.item[=].answer.item[=].text = "fait spontanément"
* item[=].answer.item[=].answer.item[=].answer.valueBoolean = false
* item[=].answer.item[=].answer.item[+].linkId = "deplacer-maison-tot"
* item[=].answer.item[=].answer.item[=].text = "fait totalement"
* item[=].answer.item[=].answer.item[=].answer.valueBoolean = false
* item[=].answer.item[=].answer.item[+].linkId = "deplacer-maison-correct"
* item[=].answer.item[=].answer.item[=].text = "fait correctement"
* item[=].answer.item[=].answer.item[=].answer.valueBoolean = false
* item[=].answer.item[=].answer.item[+].linkId = "deplacer-maison-habit"
* item[=].answer.item[=].answer.item[=].text = "fait habituellement"
* item[=].answer.item[=].answer.item[=].answer.valueBoolean = false
* item[=].answer.item[+].linkId = "deplacer-dehors"
* item[=].answer.item[=].text = "Se déplacer en dehors de la maison et d'autres bâtiments"
* item[=].answer.item[=].answer.valueCoding = $icf#qf4 "facilitateur absolu"
* item[=].answer.item[=].answer.item[0].linkId = "deplacer-dehors-spont"
* item[=].answer.item[=].answer.item[=].text = "fait spontanément"
* item[=].answer.item[=].answer.item[=].answer.valueBoolean = false
* item[=].answer.item[=].answer.item[+].linkId = "deplacer-dehors-tot"
* item[=].answer.item[=].answer.item[=].text = "fait totalement"
* item[=].answer.item[=].answer.item[=].answer.valueBoolean = false
* item[=].answer.item[=].answer.item[+].linkId = "deplacer-dehors-correct"
* item[=].answer.item[=].answer.item[=].text = "fait correctement"
* item[=].answer.item[=].answer.item[=].answer.valueBoolean = false
* item[=].answer.item[=].answer.item[+].linkId = "deplacer-dehors-habit"
* item[=].answer.item[=].answer.item[=].text = "fait habituellement"
* item[=].answer.item[=].answer.item[=].answer.valueBoolean = false
* item[+].linkId = "appareil-communication"
* item[=].text = "Utiliser d'autres appareils et techniques de communication précisés"
* item[=].answer.valueCoding = $icf#qf0 "aucun facilitateur"
* item[=].answer.item[0].linkId = "appareil-spont"
* item[=].answer.item[=].text = "fait spontanément"
* item[=].answer.item[=].answer.valueBoolean = true
* item[=].answer.item[+].linkId = "appareil-tot"
* item[=].answer.item[=].text = "fait totalement"
* item[=].answer.item[=].answer.valueBoolean = true
* item[=].answer.item[+].linkId = "appareil-correct"
* item[=].answer.item[=].text = "fait correctement"
* item[=].answer.item[=].answer.valueBoolean = true
* item[=].answer.item[+].linkId = "appareil-habit"
* item[=].answer.item[=].text = "fait habituellement"
* item[=].answer.item[=].answer.valueBoolean = true
