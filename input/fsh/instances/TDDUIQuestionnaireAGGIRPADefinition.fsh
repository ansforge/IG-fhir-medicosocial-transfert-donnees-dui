Instance: evaluation-aggir-ph-ssiad
InstanceOf: Questionnaire
Description: "Grille d'évaluation AGGIR PH SSIAD"
Usage: #definition
* title = "Evaluation AGGIR PA SSIAD"
* status = #active
* code = $terminologie-cisis#MED-1293 "Evaluation AGGIR PA SSIAD"
* item[0].type = #choice
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
* item[+].type = #text
* item[=].linkId = "commentaire-eval"
* item[=].text = "Commentaire"
* item[=].required = false
* item[=].repeats = false
* item[+].item[0].type = #boolean
* item[=].item[=].linkId = "pensee-spont"
* item[=].item[=].code = $terminologie-cisis#MED-1307 "fait spontanément"
* item[=].item[=].text = "fait spontanément"
* item[=].item[=].repeats = false
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "pensee-tot"
* item[=].item[=].code = $terminologie-cisis#MED-1308 "fait totalement"
* item[=].item[=].text = "fait totalement"
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "pensee-correct"
* item[=].item[=].code = $terminologie-cisis#MED-1309 "fait correctement"
* item[=].item[=].text = "fait correctement"
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "pensee-habit"
* item[=].item[=].code = $terminologie-cisis#MED-1310 "fait habituellement"
* item[=].item[=].text = "fait habituellement"
* item[=].item[+].type = #text
* item[=].item[=].linkId = "commentaire-pensee"
* item[=].item[=].text = "Commentaire"
* item[=].type = #choice
* item[=].linkId = "fonction-pensee"
* item[=].code = $icf#b160 "Thought functions"
* item[=].text = "Fonctions de la pensée"
* item[=].required = false
* item[=].repeats = false
* item[=].answerOption[0].valueCoding = $icf#qf0 "aucun facilitateur"
* item[=].answerOption[+].valueCoding = $icf#qf2 "facilitateur modéré"
* item[=].answerOption[+].valueCoding = $icf#qf4 "facilitateur absolu"
* item[+].item[0].type = #boolean
* item[=].item[=].linkId = "orientation-spont"
* item[=].item[=].code = $terminologie-cisis#MED-1307 "fait spontanément"
* item[=].item[=].text = "fait spontanément"
* item[=].item[=].repeats = false
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "orientation-tot"
* item[=].item[=].code = $terminologie-cisis#MED-1308 "fait totalement"
* item[=].item[=].text = "fait totalement"
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "orientation-correct"
* item[=].item[=].code = $terminologie-cisis#MED-1309 "fait correctement"
* item[=].item[=].text = "fait correctement"
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "orientation-habit"
* item[=].item[=].code = $terminologie-cisis#MED-1310 "fait habituellement"
* item[=].item[=].text = "fait habituellement"
* item[=].item[+].type = #text
* item[=].item[=].linkId = "orientation-commentaire"
* item[=].item[=].text = "Commentaire"
* item[=].type = #choice
* item[=].linkId = "fonction-orientation"
* item[=].code = $icf#b114 "Orientation functions"
* item[=].text = "Fonctions d'orientation"
* item[=].required = false
* item[=].repeats = false
* item[=].answerOption[0].valueCoding = $icf#qf0 "aucun facilitateur"
* item[=].answerOption[+].valueCoding = $icf#qf2 "facilitateur modéré"
* item[=].answerOption[+].valueCoding = $icf#qf4 "facilitateur absolu"
* item[+].item[0].type = #boolean
* item[=].item[=].linkId = "laver-spont"
* item[=].item[=].code = $terminologie-cisis#MED-1307 "fait spontanément"
* item[=].item[=].text = "fait spontanément"
* item[=].item[=].repeats = false
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "laver-tot"
* item[=].item[=].code = $terminologie-cisis#MED-1308 "fait totalement"
* item[=].item[=].text = "fait totalement"
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "laver-correct"
* item[=].item[=].code = $terminologie-cisis#MED-1309 "fait correctement"
* item[=].item[=].text = "fait correctement"
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "laver-commentaire"
* item[=].item[=].code = $terminologie-cisis#MED-1310 "fait habituellement"
* item[=].item[=].text = "fait habituellement"
* item[=].item[+].type = #text
* item[=].item[=].linkId = "859610733282"
* item[=].item[=].text = "Commentaire"
* item[=].type = #choice
* item[=].linkId = "se-laver"
* item[=].code = $icf#d5100 "Washing body parts"
* item[=].text = "Se laver"
* item[=].required = false
* item[=].repeats = false
* item[=].answerOption[0].valueCoding = $icf#qf0 "aucun facilitateur"
* item[=].answerOption[+].valueCoding = $icf#qf2 "facilitateur modéré"
* item[=].answerOption[+].valueCoding = $icf#qf4 "facilitateur absolu"
* item[+].item[0].type = #boolean
* item[=].item[=].linkId = "prendre-soin-spont"
* item[=].item[=].code = $terminologie-cisis#MED-1307 "fait spontanément"
* item[=].item[=].text = "fait spontanément"
* item[=].item[=].repeats = false
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "prendre-soin-tot"
* item[=].item[=].code = $terminologie-cisis#MED-1308 "fait totalement"
* item[=].item[=].text = "fait totalement"
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "prendre-soin-correct"
* item[=].item[=].code = $terminologie-cisis#MED-1309 "fait correctement"
* item[=].item[=].text = "fait correctement"
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "prendre-soin-habit"
* item[=].item[=].code = $terminologie-cisis#MED-1310 "fait habituellement"
* item[=].item[=].text = "fait habituellement"
* item[=].item[+].type = #text
* item[=].item[=].linkId = "prendre-soin-commentaire"
* item[=].item[=].text = "Commentaire"
* item[=].type = #choice
* item[=].linkId = "prendre-soin"
* item[=].code = $icf#d520 "Caring for body parts"
* item[=].text = "Prendre soin des parties de son corps"
* item[=].required = false
* item[=].repeats = false
* item[=].answerOption[0].valueCoding = $icf#qf0 "aucun facilitateur"
* item[=].answerOption[+].valueCoding = $icf#qf2 "facilitateur modéré"
* item[=].answerOption[+].valueCoding = $icf#qf4 "facilitateur absolu"
* item[+].item[0].type = #boolean
* item[=].item[=].linkId = "mettre-vetement-spont"
* item[=].item[=].code = $terminologie-cisis#MED-1307 "fait spontanément"
* item[=].item[=].text = "fait spontanément"
* item[=].item[=].repeats = false
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "mettre-vetement-tot"
* item[=].item[=].code = $terminologie-cisis#MED-1308 "fait totalement"
* item[=].item[=].text = "fait totalement"
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "mettre-vetement-correct"
* item[=].item[=].code = $terminologie-cisis#MED-1309 "fait correctement"
* item[=].item[=].text = "fait correctement"
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "mettre-vetement-habit"
* item[=].item[=].code = $terminologie-cisis#MED-1310 "fait habituellement"
* item[=].item[=].text = "fait habituellement"
* item[=].item[+].type = #text
* item[=].item[=].linkId = "mettre-vetement-commentaire"
* item[=].item[=].text = "Commentaire"
* item[=].type = #choice
* item[=].linkId = "mettre-vetement"
* item[=].code = $icf#d5400 "Putting on clothes"
* item[=].text = "Mettre des vêtements"
* item[=].required = false
* item[=].repeats = false
* item[=].answerOption[0].valueCoding = $icf#qf0 "aucun facilitateur"
* item[=].answerOption[+].valueCoding = $icf#qf2 "facilitateur modéré"
* item[=].answerOption[+].valueCoding = $icf#qf4 "facilitateur absolu"
* item[+].item[0].type = #boolean
* item[=].item[=].linkId = "motricite-fine-spont"
* item[=].item[=].code = $terminologie-cisis#MED-1307 "fait spontanément"
* item[=].item[=].text = "fait spontanément"
* item[=].item[=].repeats = false
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "motricite-fine-tot"
* item[=].item[=].code = $terminologie-cisis#MED-1308 "fait totalement"
* item[=].item[=].text = "fait totalement"
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "motricite-fine-correct"
* item[=].item[=].code = $terminologie-cisis#MED-1309 "fait correctement"
* item[=].item[=].text = "fait correctement"
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "motricite-fine-habit"
* item[=].item[=].code = $terminologie-cisis#MED-1310 "fait habituellement"
* item[=].item[=].text = "fait habituellement"
* item[=].item[+].type = #text
* item[=].item[=].linkId = "motricite-fine-commentaire"
* item[=].item[=].text = "Commentaire"
* item[=].type = #choice
* item[=].linkId = "motricite-fine"
* item[=].code = $icf#d440 "Activités de motricité fine"
* item[=].text = "Activités de motricité fine"
* item[=].required = false
* item[=].repeats = false
* item[=].answerOption[0].valueCoding = $icf#qf0 "aucun facilitateur"
* item[=].answerOption[+].valueCoding = $icf#qf2 "facilitateur modéré"
* item[=].answerOption[+].valueCoding = $icf#qf4 "facilitateur absolu"
* item[+].item[0].type = #boolean
* item[=].item[=].linkId = "mettre-chaussure-spont"
* item[=].item[=].code = $terminologie-cisis#MED-1307 "fait spontanément"
* item[=].item[=].text = "fait spontanément"
* item[=].item[=].repeats = false
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "mettre-chaussure-tot"
* item[=].item[=].code = $terminologie-cisis#MED-1308 "fait totalement"
* item[=].item[=].text = "fait totalement"
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "mettre-chaussure-correct"
* item[=].item[=].code = $terminologie-cisis#MED-1309 "fait correctement"
* item[=].item[=].text = "fait correctement"
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "mettre-chaussure-habit"
* item[=].item[=].code = $terminologie-cisis#MED-1310 "fait habituellement"
* item[=].item[=].text = "fait habituellement"
* item[=].item[+].type = #text
* item[=].item[=].linkId = "mettre-chaussure-commentaire"
* item[=].item[=].text = "Commentaire"
* item[=].type = #choice
* item[=].linkId = "mettre-chaussure"
* item[=].code = $icf#d5402 "Putting on footwear"
* item[=].text = "Mettre des chaussures"
* item[=].required = false
* item[=].repeats = false
* item[=].answerOption[0].valueCoding = $icf#qf0 "aucun facilitateur"
* item[=].answerOption[+].valueCoding = $icf#qf2 "facilitateur modéré"
* item[=].answerOption[+].valueCoding = $icf#qf4 "facilitateur absolu"
* item[+].item[0].type = #boolean
* item[=].item[=].linkId = "manger-spont"
* item[=].item[=].code = $terminologie-cisis#MED-1307 "fait spontanément"
* item[=].item[=].text = "fait spontanément"
* item[=].item[=].repeats = false
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "manger-tot"
* item[=].item[=].code = $terminologie-cisis#MED-1308 "fait totalement"
* item[=].item[=].text = "fait totalement"
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "manger-correct"
* item[=].item[=].code = $terminologie-cisis#MED-1309 "fait correctement"
* item[=].item[=].text = "fait correctement"
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "manger-habit"
* item[=].item[=].code = $terminologie-cisis#MED-1310 "fait habituellement"
* item[=].item[=].text = "fait habituellement"
* item[=].item[+].type = #text
* item[=].item[=].linkId = "manger-commentaire"
* item[=].item[=].text = "Commentaire"
* item[=].type = #choice
* item[=].linkId = "manger"
* item[=].code = $icf#d550 "Eating"
* item[=].text = "Manger"
* item[=].required = false
* item[=].repeats = false
* item[=].answerOption[0].valueCoding = $icf#qf0 "aucun facilitateur"
* item[=].answerOption[+].valueCoding = $icf#qf2 "facilitateur modéré"
* item[=].answerOption[+].valueCoding = $icf#qf4 "facilitateur absolu"
* item[+].item[0].type = #boolean
* item[=].item[=].linkId = "passage-aliment-spont"
* item[=].item[=].code = $terminologie-cisis#MED-1307 "fait spontanément"
* item[=].item[=].text = "fait spontanément"
* item[=].item[=].repeats = false
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "passage-aliment-tot"
* item[=].item[=].code = $terminologie-cisis#MED-1308 "fait totalement"
* item[=].item[=].text = "fait totalement"
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "passage-aliment-correct"
* item[=].item[=].code = $terminologie-cisis#MED-1309 "fait correctement"
* item[=].item[=].text = "fait correctement"
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "passage-aliment-habit"
* item[=].item[=].code = $terminologie-cisis#MED-1310 "fait habituellement"
* item[=].item[=].text = "fait habituellement"
* item[=].item[+].type = #text
* item[=].item[=].linkId = "passage-aliment-commentaire"
* item[=].item[=].text = "Commentaire"
* item[=].type = #choice
* item[=].linkId = "passage-aliment"
* item[=].code = $icf#b5105 "Swallowing"
* item[=].text = "Passage des aliments par l'estomac et les intestins"
* item[=].required = false
* item[=].repeats = false
* item[=].answerOption[0].valueCoding = $icf#qf0 "aucun facilitateur"
* item[=].answerOption[+].valueCoding = $icf#qf2 "facilitateur modéré"
* item[=].answerOption[+].valueCoding = $icf#qf4 "facilitateur absolu"
* item[+].item[0].type = #boolean
* item[=].item[=].linkId = "miction-spont"
* item[=].item[=].code = $terminologie-cisis#MED-1307 "fait spontanément"
* item[=].item[=].text = "fait spontanément"
* item[=].item[=].repeats = false
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "miction-tot"
* item[=].item[=].code = $terminologie-cisis#MED-1308 "fait totalement"
* item[=].item[=].text = "fait totalement"
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "miction-correct"
* item[=].item[=].code = $terminologie-cisis#MED-1309 "fait correctement"
* item[=].item[=].text = "fait correctement"
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "miction-habit"
* item[=].item[=].code = $terminologie-cisis#MED-1310 "fait habituellement"
* item[=].item[=].text = "fait habituellement"
* item[=].item[+].type = #text
* item[=].item[=].linkId = "miction-commentaire"
* item[=].item[=].text = "Commentaire"
* item[=].type = #choice
* item[=].linkId = "miction"
* item[=].code = $icf#d5300 "Regulating urination"
* item[=].text = "Assurer la régulation de la miction"
* item[=].required = false
* item[=].repeats = false
* item[=].answerOption[0].valueCoding = $icf#qf0 "aucun facilitateur"
* item[=].answerOption[+].valueCoding = $icf#qf2 "facilitateur modéré"
* item[=].answerOption[+].valueCoding = $icf#qf4 "facilitateur absolu"
* item[+].item[0].type = #boolean
* item[=].item[=].linkId = "defecation-spont"
* item[=].item[=].code = $terminologie-cisis#MED-1307 "fait spontanément"
* item[=].item[=].text = "fait spontanément"
* item[=].item[=].repeats = false
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "defecation-tot"
* item[=].item[=].code = $terminologie-cisis#MED-1308 "fait totalement"
* item[=].item[=].text = "fait totalement"
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "defecation-correct"
* item[=].item[=].code = $terminologie-cisis#MED-1309 "fait correctement"
* item[=].item[=].text = "fait correctement"
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "defecation-habit"
* item[=].item[=].code = $terminologie-cisis#MED-1310 "fait habituellement"
* item[=].item[=].text = "fait habituellement"
* item[=].item[+].type = #text
* item[=].item[=].linkId = "defecation-commentaire"
* item[=].item[=].text = "Commentaire"
* item[=].type = #choice
* item[=].linkId = "defecation"
* item[=].code = $icf#d5301 "Regulating defecation"
* item[=].text = "Assurer la régulation de la défécation"
* item[=].required = false
* item[=].repeats = false
* item[=].answerOption[0].valueCoding = $icf#qf0 "aucun facilitateur"
* item[=].answerOption[+].valueCoding = $icf#qf2 "facilitateur modéré"
* item[=].answerOption[+].valueCoding = $icf#qf4 "facilitateur absolu"
* item[+].item[0].type = #boolean
* item[=].item[=].linkId = "pos-corps-spont"
* item[=].item[=].code = $terminologie-cisis#MED-1307 "fait spontanément"
* item[=].item[=].text = "fait spontanément"
* item[=].item[=].repeats = false
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "pos-corps-tot"
* item[=].item[=].code = $terminologie-cisis#MED-1308 "fait totalement"
* item[=].item[=].text = "fait totalement"
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "pos-corps-correct"
* item[=].item[=].code = $terminologie-cisis#MED-1309 "fait correctement"
* item[=].item[=].text = "fait correctement"
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "pos-corps-habit"
* item[=].item[=].code = $terminologie-cisis#MED-1310 "fait habituellement"
* item[=].item[=].text = "fait habituellement"
* item[=].item[+].type = #text
* item[=].item[=].linkId = "pos-corps-correct-commentaire"
* item[=].item[=].text = "Commentaire"
* item[=].type = #choice
* item[=].linkId = "pos-corps"
* item[=].code = $icf#d410 "Changing basic body position"
* item[=].text = "Changer la position corporelle de base"
* item[=].required = false
* item[=].repeats = false
* item[=].answerOption[0].valueCoding = $icf#qf0 "aucun facilitateur"
* item[=].answerOption[+].valueCoding = $icf#qf2 "facilitateur modéré"
* item[=].answerOption[+].valueCoding = $icf#qf4 "facilitateur absolu"
* item[+].item[0].type = #boolean
* item[=].item[=].linkId = "deplacer-maison-spont"
* item[=].item[=].code = $terminologie-cisis#MED-1307 "fait spontanément"
* item[=].item[=].text = "fait spontanément"
* item[=].item[=].repeats = false
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "deplacer-maison-tot"
* item[=].item[=].code = $terminologie-cisis#MED-1308 "fait totalement"
* item[=].item[=].text = "fait totalement"
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "deplacer-maison-correct"
* item[=].item[=].code = $terminologie-cisis#MED-1309 "fait correctement"
* item[=].item[=].text = "fait correctement"
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "deplacer-maison-habit"
* item[=].item[=].code = $terminologie-cisis#MED-1310 "fait habituellement"
* item[=].item[=].text = "fait habituellement"
* item[=].item[+].type = #text
* item[=].item[=].linkId = "deplacer-maison-commentaire"
* item[=].item[=].text = "Commentaire"
* item[=].type = #choice
* item[=].linkId = "deplacer-maison"
* item[=].code = $icf#d4600 "Moving around within the home"
* item[=].text = "Se déplacer dans la maison"
* item[=].required = false
* item[=].repeats = false
* item[=].answerOption[0].valueCoding = $icf#qf0 "aucun facilitateur"
* item[=].answerOption[+].valueCoding = $icf#qf2 "facilitateur modéré"
* item[=].answerOption[+].valueCoding = $icf#qf4 "facilitateur absolu"
* item[+].item[0].type = #boolean
* item[=].item[=].linkId = "deplacer-dehors-spont"
* item[=].item[=].code = $terminologie-cisis#MED-1307 "fait spontanément"
* item[=].item[=].text = "fait spontanément"
* item[=].item[=].repeats = false
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "deplacer-dehors-tot"
* item[=].item[=].code = $terminologie-cisis#MED-1308 "fait totalement"
* item[=].item[=].text = "fait totalement"
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "deplacer-dehors-correct"
* item[=].item[=].code = $terminologie-cisis#MED-1309 "fait correctement"
* item[=].item[=].text = "fait correctement"
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "deplacer-dehors-habit"
* item[=].item[=].code = $terminologie-cisis#MED-1310 "fait habituellement"
* item[=].item[=].text = "fait habituellement"
* item[=].item[+].type = #text
* item[=].item[=].linkId = "deplacer-dehors-commentaire"
* item[=].item[=].text = "Commentaire"
* item[=].type = #choice
* item[=].linkId = "deplacer-dehors"
* item[=].code = $icf#d4602 "Moving around outside the home and other buildings"
* item[=].text = "Se déplacer en dehors de la maison et d'autres bâtiments"
* item[=].required = false
* item[=].repeats = false
* item[=].answerOption[0].valueCoding = $icf#qf0 "aucun facilitateur"
* item[=].answerOption[+].valueCoding = $icf#qf2 "facilitateur modéré"
* item[=].answerOption[+].valueCoding = $icf#qf4 "facilitateur absolu"
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
* item[=].linkId = "appareil"
* item[=].code = $icf#d3608 "Using communication devices and techniques, other specified"
* item[=].text = "Utiliser d'autres appareils et techniques de communication précisés"
* item[=].required = false
* item[=].repeats = false
* item[=].answerOption[0].valueCoding = $icf#qf0 "aucun facilitateur"
* item[=].answerOption[+].valueCoding = $icf#qf2 "facilitateur modéré"
* item[=].answerOption[+].valueCoding = $icf#qf4 "facilitateur absolu"