Instance: tddui-questionnaire-aggir-pa-ssiad
InstanceOf: Questionnaire
Description: "Grille d'évaluation AGGIR PA SSIAD"
Usage: #definition

* title = "Evaluation AGGIR PA SSIAD"
* status = #active
* code = $terminologie-cisis#MED-1293 "Evaluation AGGIR PA SSIAD"
* item[0].item[0].item[0].type = #boolean
* item[=].item[=].item[=].linkId = "pensee-spont"
* item[=].item[=].item[=].code = $terminologie-cisis#MED-1307 "fait spontanément"
* item[=].item[=].item[=].text = "fait spontanément"
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].linkId = "pensee-tot"
* item[=].item[=].item[=].code = $terminologie-cisis#MED-1308 "fait totalement"
* item[=].item[=].item[=].text = "fait totalement"
* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].linkId = "pensee-correct"
* item[=].item[=].item[=].code = $terminologie-cisis#MED-1309 "fait correctement"
* item[=].item[=].item[=].text = "fait correctement"
* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].linkId = "pensee-habit"
* item[=].item[=].item[=].code = $terminologie-cisis#MED-1310 "fait habituellement"
* item[=].item[=].item[=].text = "fait habituellement"
* item[=].item[=].item[+].type = #text
* item[=].item[=].item[=].linkId = "commentaire-pensee"
* item[=].item[=].item[=].text = "Commentaire"
* item[=].item[=].type = #choice
* item[=].item[=].linkId = "fonction-pensee"
* item[=].item[=].code = $icf#b160 "Thought functions"
* item[=].item[=].text = "Fonctions de la pensée"
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[=].answerOption[0].valueCoding = $icf#qf0 "aucun facilitateur"
* item[=].item[=].answerOption[+].valueCoding = $icf#qf2 "facilitateur modéré"
* item[=].item[=].answerOption[+].valueCoding = $icf#qf4 "facilitateur absolu"
* item[=].item[+].item[0].type = #boolean
* item[=].item[=].item[=].linkId = "orientation-spont"
* item[=].item[=].item[=].code = $terminologie-cisis#MED-1307 "fait spontanément"
* item[=].item[=].item[=].text = "fait spontanément"
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].linkId = "orientation-tot"
* item[=].item[=].item[=].code = $terminologie-cisis#MED-1308 "fait totalement"
* item[=].item[=].item[=].text = "fait totalement"
* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].linkId = "orientation-correct"
* item[=].item[=].item[=].code = $terminologie-cisis#MED-1309 "fait correctement"
* item[=].item[=].item[=].text = "fait correctement"
* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].linkId = "orientation-habit"
* item[=].item[=].item[=].code = $terminologie-cisis#MED-1310 "fait habituellement"
* item[=].item[=].item[=].text = "fait habituellement"
* item[=].item[=].item[+].type = #text
* item[=].item[=].item[=].linkId = "orientation-commentaire"
* item[=].item[=].item[=].text = "Commentaire"
* item[=].item[=].type = #choice
* item[=].item[=].linkId = "fonction-orientation"
* item[=].item[=].code = $icf#b114 "Orientation functions"
* item[=].item[=].text = "Fonctions d'orientation"
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[=].answerOption[0].valueCoding = $icf#qf0 "aucun facilitateur"
* item[=].item[=].answerOption[+].valueCoding = $icf#qf2 "facilitateur modéré"
* item[=].item[=].answerOption[+].valueCoding = $icf#qf4 "facilitateur absolu"
* item[=].item[+].item[0].type = #boolean
* item[=].item[=].item[=].linkId = "laver-spont"
* item[=].item[=].item[=].code = $terminologie-cisis#MED-1307 "fait spontanément"
* item[=].item[=].item[=].text = "fait spontanément"
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].linkId = "laver-tot"
* item[=].item[=].item[=].code = $terminologie-cisis#MED-1308 "fait totalement"
* item[=].item[=].item[=].text = "fait totalement"
* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].linkId = "laver-correct"
* item[=].item[=].item[=].code = $terminologie-cisis#MED-1309 "fait correctement"
* item[=].item[=].item[=].text = "fait correctement"
* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].linkId = "laver-commentaire"
* item[=].item[=].item[=].code = $terminologie-cisis#MED-1310 "fait habituellement"
* item[=].item[=].item[=].text = "fait habituellement"
* item[=].item[=].item[+].type = #text
* item[=].item[=].item[=].linkId = "commentaire-se-laver"
* item[=].item[=].item[=].text = "Commentaire"
* item[=].item[=].type = #choice
* item[=].item[=].linkId = "se-laver"
* item[=].item[=].code = $icf#d5100 "Washing body parts"
* item[=].item[=].text = "Se laver"
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[=].answerOption[0].valueCoding = $icf#qf0 "aucun facilitateur"
* item[=].item[=].answerOption[+].valueCoding = $icf#qf2 "facilitateur modéré"
* item[=].item[=].answerOption[+].valueCoding = $icf#qf4 "facilitateur absolu"
* item[=].item[+].item[0].type = #boolean
* item[=].item[=].item[=].linkId = "prendre-soin-spont"
* item[=].item[=].item[=].code = $terminologie-cisis#MED-1307 "fait spontanément"
* item[=].item[=].item[=].text = "fait spontanément"
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].linkId = "prendre-soin-tot"
* item[=].item[=].item[=].code = $terminologie-cisis#MED-1308 "fait totalement"
* item[=].item[=].item[=].text = "fait totalement"
* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].linkId = "prendre-soin-correct"
* item[=].item[=].item[=].code = $terminologie-cisis#MED-1309 "fait correctement"
* item[=].item[=].item[=].text = "fait correctement"
* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].linkId = "prendre-soin-habit"
* item[=].item[=].item[=].code = $terminologie-cisis#MED-1310 "fait habituellement"
* item[=].item[=].item[=].text = "fait habituellement"
* item[=].item[=].item[+].type = #text
* item[=].item[=].item[=].linkId = "prendre-soin-commentaire"
* item[=].item[=].item[=].text = "Commentaire"
* item[=].item[=].type = #choice
* item[=].item[=].linkId = "prendre-soin"
* item[=].item[=].code = $icf#d520 "Caring for body parts"
* item[=].item[=].text = "Prendre soin des parties de son corps"
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[=].answerOption[0].valueCoding = $icf#qf0 "aucun facilitateur"
* item[=].item[=].answerOption[+].valueCoding = $icf#qf2 "facilitateur modéré"
* item[=].item[=].answerOption[+].valueCoding = $icf#qf4 "facilitateur absolu"
* item[=].item[+].item[0].type = #boolean
* item[=].item[=].item[=].linkId = "mettre-vetement-spont"
* item[=].item[=].item[=].code = $terminologie-cisis#MED-1307 "fait spontanément"
* item[=].item[=].item[=].text = "fait spontanément"
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].linkId = "mettre-vetement-tot"
* item[=].item[=].item[=].code = $terminologie-cisis#MED-1308 "fait totalement"
* item[=].item[=].item[=].text = "fait totalement"
* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].linkId = "mettre-vetement-correct"
* item[=].item[=].item[=].code = $terminologie-cisis#MED-1309 "fait correctement"
* item[=].item[=].item[=].text = "fait correctement"
* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].linkId = "mettre-vetement-habit"
* item[=].item[=].item[=].code = $terminologie-cisis#MED-1310 "fait habituellement"
* item[=].item[=].item[=].text = "fait habituellement"
* item[=].item[=].item[+].type = #text
* item[=].item[=].item[=].linkId = "mettre-vetement-commentaire"
* item[=].item[=].item[=].text = "Commentaire"
* item[=].item[=].type = #choice
* item[=].item[=].linkId = "mettre-vetement"
* item[=].item[=].code = $icf#d5400 "Putting on clothes"
* item[=].item[=].text = "Mettre des vêtements"
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[=].answerOption[0].valueCoding = $icf#qf0 "aucun facilitateur"
* item[=].item[=].answerOption[+].valueCoding = $icf#qf2 "facilitateur modéré"
* item[=].item[=].answerOption[+].valueCoding = $icf#qf4 "facilitateur absolu"
* item[=].item[+].item[0].type = #boolean
* item[=].item[=].item[=].linkId = "motricite-fine-spont"
* item[=].item[=].item[=].code = $terminologie-cisis#MED-1307 "fait spontanément"
* item[=].item[=].item[=].text = "fait spontanément"
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].linkId = "motricite-fine-tot"
* item[=].item[=].item[=].code = $terminologie-cisis#MED-1308 "fait totalement"
* item[=].item[=].item[=].text = "fait totalement"
* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].linkId = "motricite-fine-correct"
* item[=].item[=].item[=].code = $terminologie-cisis#MED-1309 "fait correctement"
* item[=].item[=].item[=].text = "fait correctement"
* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].linkId = "motricite-fine-habit"
* item[=].item[=].item[=].code = $terminologie-cisis#MED-1310 "fait habituellement"
* item[=].item[=].item[=].text = "fait habituellement"
* item[=].item[=].item[+].type = #text
* item[=].item[=].item[=].linkId = "motricite-fine-commentaire"
* item[=].item[=].item[=].text = "Commentaire"
* item[=].item[=].type = #choice
* item[=].item[=].linkId = "motricite-fine"
* item[=].item[=].code = $icf#d440 "Fine hand use"
* item[=].item[=].text = "Activités de motricité fine"
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[=].answerOption[0].valueCoding = $icf#qf0 "aucun facilitateur"
* item[=].item[=].answerOption[+].valueCoding = $icf#qf2 "facilitateur modéré"
* item[=].item[=].answerOption[+].valueCoding = $icf#qf4 "facilitateur absolu"
* item[=].item[+].item[0].type = #boolean
* item[=].item[=].item[=].linkId = "mettre-chaussure-spont"
* item[=].item[=].item[=].code = $terminologie-cisis#MED-1307 "fait spontanément"
* item[=].item[=].item[=].text = "fait spontanément"
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].linkId = "mettre-chaussure-tot"
* item[=].item[=].item[=].code = $terminologie-cisis#MED-1308 "fait totalement"
* item[=].item[=].item[=].text = "fait totalement"
* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].linkId = "mettre-chaussure-correct"
* item[=].item[=].item[=].code = $terminologie-cisis#MED-1309 "fait correctement"
* item[=].item[=].item[=].text = "fait correctement"
* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].linkId = "mettre-chaussure-habit"
* item[=].item[=].item[=].code = $terminologie-cisis#MED-1310 "fait habituellement"
* item[=].item[=].item[=].text = "fait habituellement"
* item[=].item[=].item[+].type = #text
* item[=].item[=].item[=].linkId = "mettre-chaussure-commentaire"
* item[=].item[=].item[=].text = "Commentaire"
* item[=].item[=].type = #choice
* item[=].item[=].linkId = "mettre-chaussure"
* item[=].item[=].code = $icf#d5402 "Putting on footwear"
* item[=].item[=].text = "Mettre des chaussures"
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[=].answerOption[0].valueCoding = $icf#qf0 "aucun facilitateur"
* item[=].item[=].answerOption[+].valueCoding = $icf#qf2 "facilitateur modéré"
* item[=].item[=].answerOption[+].valueCoding = $icf#qf4 "facilitateur absolu"
* item[=].item[+].item[0].type = #boolean
* item[=].item[=].item[=].linkId = "manger-spont"
* item[=].item[=].item[=].code = $terminologie-cisis#MED-1307 "fait spontanément"
* item[=].item[=].item[=].text = "fait spontanément"
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].linkId = "manger-tot"
* item[=].item[=].item[=].code = $terminologie-cisis#MED-1308 "fait totalement"
* item[=].item[=].item[=].text = "fait totalement"
* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].linkId = "manger-correct"
* item[=].item[=].item[=].code = $terminologie-cisis#MED-1309 "fait correctement"
* item[=].item[=].item[=].text = "fait correctement"
* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].linkId = "manger-habit"
* item[=].item[=].item[=].code = $terminologie-cisis#MED-1310 "fait habituellement"
* item[=].item[=].item[=].text = "fait habituellement"
* item[=].item[=].item[+].type = #text
* item[=].item[=].item[=].linkId = "manger-commentaire"
* item[=].item[=].item[=].text = "Commentaire"
* item[=].item[=].type = #choice
* item[=].item[=].linkId = "manger"
* item[=].item[=].code = $icf#d550 "Eating"
* item[=].item[=].text = "Manger"
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[=].answerOption[0].valueCoding = $icf#qf0 "aucun facilitateur"
* item[=].item[=].answerOption[+].valueCoding = $icf#qf2 "facilitateur modéré"
* item[=].item[=].answerOption[+].valueCoding = $icf#qf4 "facilitateur absolu"
* item[=].item[+].item[0].type = #boolean
* item[=].item[=].item[=].linkId = "passage-aliment-spont"
* item[=].item[=].item[=].code = $terminologie-cisis#MED-1307 "fait spontanément"
* item[=].item[=].item[=].text = "fait spontanément"
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].linkId = "passage-aliment-tot"
* item[=].item[=].item[=].code = $terminologie-cisis#MED-1308 "fait totalement"
* item[=].item[=].item[=].text = "fait totalement"
* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].linkId = "passage-aliment-correct"
* item[=].item[=].item[=].code = $terminologie-cisis#MED-1309 "fait correctement"
* item[=].item[=].item[=].text = "fait correctement"
* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].linkId = "passage-aliment-habit"
* item[=].item[=].item[=].code = $terminologie-cisis#MED-1310 "fait habituellement"
* item[=].item[=].item[=].text = "fait habituellement"
* item[=].item[=].item[+].type = #text
* item[=].item[=].item[=].linkId = "passage-aliment-commentaire"
* item[=].item[=].item[=].text = "Commentaire"
* item[=].item[=].type = #choice
* item[=].item[=].linkId = "passage-aliment"
* item[=].item[=].code = $icf#b5105 "Swallowing"
* item[=].item[=].text = "Passage des aliments par l'estomac et les intestins"
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[=].answerOption[0].valueCoding = $icf#qf0 "aucun facilitateur"
* item[=].item[=].answerOption[+].valueCoding = $icf#qf2 "facilitateur modéré"
* item[=].item[=].answerOption[+].valueCoding = $icf#qf4 "facilitateur absolu"
* item[=].item[+].item[0].type = #boolean
* item[=].item[=].item[=].linkId = "miction-spont"
* item[=].item[=].item[=].code = $terminologie-cisis#MED-1307 "fait spontanément"
* item[=].item[=].item[=].text = "fait spontanément"
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].linkId = "miction-tot"
* item[=].item[=].item[=].code = $terminologie-cisis#MED-1308 "fait totalement"
* item[=].item[=].item[=].text = "fait totalement"
* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].linkId = "miction-correct"
* item[=].item[=].item[=].code = $terminologie-cisis#MED-1309 "fait correctement"
* item[=].item[=].item[=].text = "fait correctement"
* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].linkId = "miction-habit"
* item[=].item[=].item[=].code = $terminologie-cisis#MED-1310 "fait habituellement"
* item[=].item[=].item[=].text = "fait habituellement"
* item[=].item[=].item[+].type = #text
* item[=].item[=].item[=].linkId = "miction-commentaire"
* item[=].item[=].item[=].text = "Commentaire"
* item[=].item[=].type = #choice
* item[=].item[=].linkId = "assurer-regulation-miction"
* item[=].item[=].code = $icf#d5300 "Regulating urination"
* item[=].item[=].text = "Assurer la régulation de la miction"
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[=].answerOption[0].valueCoding = $icf#qf0 "aucun facilitateur"
* item[=].item[=].answerOption[+].valueCoding = $icf#qf2 "facilitateur modéré"
* item[=].item[=].answerOption[+].valueCoding = $icf#qf4 "facilitateur absolu"
* item[=].item[+].item[0].type = #boolean
* item[=].item[=].item[=].linkId = "defecation-spont"
* item[=].item[=].item[=].code = $terminologie-cisis#MED-1307 "fait spontanément"
* item[=].item[=].item[=].text = "fait spontanément"
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].linkId = "defecation-tot"
* item[=].item[=].item[=].code = $terminologie-cisis#MED-1308 "fait totalement"
* item[=].item[=].item[=].text = "fait totalement"
* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].linkId = "defecation-correct"
* item[=].item[=].item[=].code = $terminologie-cisis#MED-1309 "fait correctement"
* item[=].item[=].item[=].text = "fait correctement"
* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].linkId = "defecation-habit"
* item[=].item[=].item[=].code = $terminologie-cisis#MED-1310 "fait habituellement"
* item[=].item[=].item[=].text = "fait habituellement"
* item[=].item[=].item[+].type = #text
* item[=].item[=].item[=].linkId = "defecation-commentaire"
* item[=].item[=].item[=].text = "Commentaire"
* item[=].item[=].type = #choice
* item[=].item[=].linkId = "assurer-regulation-defecation"
* item[=].item[=].code = $icf#d5301 "Regulating defecation"
* item[=].item[=].text = "Assurer la régulation de la défécation"
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[=].answerOption[0].valueCoding = $icf#qf0 "aucun facilitateur"
* item[=].item[=].answerOption[+].valueCoding = $icf#qf2 "facilitateur modéré"
* item[=].item[=].answerOption[+].valueCoding = $icf#qf4 "facilitateur absolu"
* item[=].item[+].item[0].type = #boolean
* item[=].item[=].item[=].linkId = "pos-corps-spont"
* item[=].item[=].item[=].code = $terminologie-cisis#MED-1307 "fait spontanément"
* item[=].item[=].item[=].text = "fait spontanément"
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].linkId = "pos-corps-tot"
* item[=].item[=].item[=].code = $terminologie-cisis#MED-1308 "fait totalement"
* item[=].item[=].item[=].text = "fait totalement"
* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].linkId = "pos-corps-correct"
* item[=].item[=].item[=].code = $terminologie-cisis#MED-1309 "fait correctement"
* item[=].item[=].item[=].text = "fait correctement"
* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].linkId = "pos-corps-habit"
* item[=].item[=].item[=].code = $terminologie-cisis#MED-1310 "fait habituellement"
* item[=].item[=].item[=].text = "fait habituellement"
* item[=].item[=].item[+].type = #text
* item[=].item[=].item[=].linkId = "pos-corps-correct-commentaire"
* item[=].item[=].item[=].text = "Commentaire"
* item[=].item[=].type = #choice
* item[=].item[=].linkId = "pos-corps"
* item[=].item[=].code = $icf#d410 "Changing basic body position"
* item[=].item[=].text = "Changer la position corporelle de base"
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[=].answerOption[0].valueCoding = $icf#qf0 "aucun facilitateur"
* item[=].item[=].answerOption[+].valueCoding = $icf#qf2 "facilitateur modéré"
* item[=].item[=].answerOption[+].valueCoding = $icf#qf4 "facilitateur absolu"
* item[=].item[+].item[0].type = #boolean
* item[=].item[=].item[=].linkId = "deplacer-maison-spont"
* item[=].item[=].item[=].code = $terminologie-cisis#MED-1307 "fait spontanément"
* item[=].item[=].item[=].text = "fait spontanément"
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].linkId = "deplacer-maison-tot"
* item[=].item[=].item[=].code = $terminologie-cisis#MED-1308 "fait totalement"
* item[=].item[=].item[=].text = "fait totalement"
* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].linkId = "deplacer-maison-correct"
* item[=].item[=].item[=].code = $terminologie-cisis#MED-1309 "fait correctement"
* item[=].item[=].item[=].text = "fait correctement"
* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].linkId = "deplacer-maison-habit"
* item[=].item[=].item[=].code = $terminologie-cisis#MED-1310 "fait habituellement"
* item[=].item[=].item[=].text = "fait habituellement"
* item[=].item[=].item[+].type = #text
* item[=].item[=].item[=].linkId = "deplacer-maison-commentaire"
* item[=].item[=].item[=].text = "Commentaire"
* item[=].item[=].type = #choice
* item[=].item[=].linkId = "deplacer-maison"
* item[=].item[=].code = $icf#d4600 "Moving around within the home"
* item[=].item[=].text = "Se déplacer dans la maison"
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[=].answerOption[0].valueCoding = $icf#qf0 "aucun facilitateur"
* item[=].item[=].answerOption[+].valueCoding = $icf#qf2 "facilitateur modéré"
* item[=].item[=].answerOption[+].valueCoding = $icf#qf4 "facilitateur absolu"
* item[=].item[+].item[0].type = #boolean
* item[=].item[=].item[=].linkId = "deplacer-dehors-spont"
* item[=].item[=].item[=].code = $terminologie-cisis#MED-1307 "fait spontanément"
* item[=].item[=].item[=].text = "fait spontanément"
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].linkId = "deplacer-dehors-tot"
* item[=].item[=].item[=].code = $terminologie-cisis#MED-1308 "fait totalement"
* item[=].item[=].item[=].text = "fait totalement"
* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].linkId = "deplacer-dehors-correct"
* item[=].item[=].item[=].code = $terminologie-cisis#MED-1309 "fait correctement"
* item[=].item[=].item[=].text = "fait correctement"
* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].linkId = "deplacer-dehors-habit"
* item[=].item[=].item[=].code = $terminologie-cisis#MED-1310 "fait habituellement"
* item[=].item[=].item[=].text = "fait habituellement"
* item[=].item[=].item[+].type = #text
* item[=].item[=].item[=].linkId = "deplacer-dehors-commentaire"
* item[=].item[=].item[=].text = "Commentaire"
* item[=].item[=].type = #choice
* item[=].item[=].linkId = "deplacer-dehors"
* item[=].item[=].code = $icf#d4602 "Moving around outside the home and other buildings"
* item[=].item[=].text = "Se déplacer en dehors de la maison et d'autres bâtiments"
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[=].answerOption[0].valueCoding = $icf#qf0 "aucun facilitateur"
* item[=].item[=].answerOption[+].valueCoding = $icf#qf2 "facilitateur modéré"
* item[=].item[=].answerOption[+].valueCoding = $icf#qf4 "facilitateur absolu"
* item[=].type = #choice
* item[=].linkId = "resultat-eval"
* item[=].text = "Résultat évaluation"
* item[=].required = false
* item[=].repeats = false
* item[=].answerOption[0].valueCoding = $terminologie-cisis#MED-339 "GIR-1"
* item[=].answerOption[+].valueCoding = $terminologie-cisis#MED-340 "GIR-2"
* item[=].answerOption[+].valueCoding = $terminologie-cisis#MED-341 "GIR-3"
* item[=].answerOption[+].valueCoding = $terminologie-cisis#MED-342 "GIR-4"
* item[=].answerOption[+].valueCoding = $terminologie-cisis#MED-343 "GIR-5"
* item[=].answerOption[+].valueCoding = $terminologie-cisis#MED-344 "GIR-6"
* item[+].item[0].type = #boolean
* item[=].item[=].linkId = "appareil-spont"
* item[=].item[=].code = $terminologie-cisis#MED-1307 "fait spontanément"
* item[=].item[=].text = "fait spontanément"
* item[=].item[=].repeats = false
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "appareil-tot"
* item[=].item[=].code = $terminologie-cisis#MED-1308 "fait totalement"
* item[=].item[=].text = "fait totalement"
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "appareil-correct"
* item[=].item[=].code = $terminologie-cisis#MED-1309 "fait correctement"
* item[=].item[=].text = "fait correctement"
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "appareil-habit"
* item[=].item[=].code = $terminologie-cisis#MED-1310 "fait habituellement"
* item[=].item[=].text = "fait habituellement"
* item[=].item[+].type = #text
* item[=].item[=].linkId = "appareil-commentaire"
* item[=].item[=].text = "Commentaire"
* item[=].type = #choice
* item[=].linkId = "appareil-communication"
* item[=].code = $icf#d3608 "Using communication devices and techniques, other specified"
* item[=].text = "Utiliser d'autres appareils et techniques de communication précisés"
* item[=].required = false
* item[=].repeats = false
* item[=].answerOption[0].valueCoding = $icf#qf0 "aucun facilitateur"
* item[=].answerOption[+].valueCoding = $icf#qf2 "facilitateur modéré"
* item[=].answerOption[+].valueCoding = $icf#qf4 "facilitateur absolu"
* item[+].type = #text
* item[=].linkId = "commentaire-eval"
* item[=].text = "Commentaire"
* item[=].required = false
* item[=].repeats = false