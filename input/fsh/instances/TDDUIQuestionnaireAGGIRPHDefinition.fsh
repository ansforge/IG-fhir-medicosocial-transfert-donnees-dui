Instance: evaluation-aggir-ph-ssiad
InstanceOf: Questionnaire
Description: "Grille d'évaluation AGGIR PH SSIAD"
Usage: #definition
* title = "Evaluation AGGIR PH SSIAD"
* status = #active
* code = $terminologie-cisis#MED-1292 "Evaluation AGGIR PH SSIAD"
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
* item[=].answerOption[0].valueCoding = #qf0 "aucun facilitateur"
* item[=].answerOption[+].valueCoding = #qf2 "facilitateur modéré"
* item[=].answerOption[+].valueCoding = #qf4 "facilitateur absolu"
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
* item[=].answerOption[0].valueCoding = #qf0 "aucun facilitateur"
* item[=].answerOption[+].valueCoding = #qf2 "facilitateur modéré"
* item[=].answerOption[+].valueCoding = #qf4 "facilitateur absolu"
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
* item[=].code = $icf#d510 "Washing oneself"
* item[=].text = "Se laver"
* item[=].required = false
* item[=].repeats = false
* item[=].answerOption[0].valueCoding = #qf0 "aucun facilitateur"
* item[=].answerOption[+].valueCoding = #qf2 "facilitateur modéré"
* item[=].answerOption[+].valueCoding = #qf4 "facilitateur absolu"
* item[+].item[0].type = #boolean
* item[=].item[=].linkId = "habiller-spont"
* item[=].item[=].code = $terminologie-cisis#MED-1307 "fait spontanément"
* item[=].item[=].text = "fait spontanément"
* item[=].item[=].repeats = false
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "habiller-tot"
* item[=].item[=].code = $terminologie-cisis#MED-1308 "fait totalement"
* item[=].item[=].text = "fait totalement"
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "habiller-correct"
* item[=].item[=].code = $terminologie-cisis#MED-1309 "fait correctement"
* item[=].item[=].text = "fait correctement"
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "habiller-habit"
* item[=].item[=].code = $terminologie-cisis#MED-1310 "fait habituellement"
* item[=].item[=].text = "fait habituellement"
* item[=].item[+].type = #text
* item[=].item[=].linkId = "habiller-commentaire"
* item[=].item[=].text = "Commentaire"
* item[=].type = #choice
* item[=].linkId = "habiller"
* item[=].code = $icf#d540 "Dressing"
* item[=].text = "S'habiller"
* item[=].required = false
* item[=].repeats = false
* item[=].answerOption[0].valueCoding = #qf0 "aucun facilitateur"
* item[=].answerOption[+].valueCoding = #qf2 "facilitateur modéré"
* item[=].answerOption[+].valueCoding = #qf4 "facilitateur absolu"
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
* item[=].answerOption[0].valueCoding = #qf0 "aucun facilitateur"
* item[=].answerOption[+].valueCoding = #qf2 "facilitateur modéré"
* item[=].answerOption[+].valueCoding = #qf4 "facilitateur absolu"
* item[+].item[0].type = #boolean
* item[=].item[=].linkId = "toilette-spont"
* item[=].item[=].code = $terminologie-cisis#MED-1307 "fait spontanément"
* item[=].item[=].text = "fait spontanément"
* item[=].item[=].repeats = false
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "toilette-tot"
* item[=].item[=].code = $terminologie-cisis#MED-1308 "fait totalement"
* item[=].item[=].text = "fait totalement"
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "toilette-correct"
* item[=].item[=].code = $terminologie-cisis#MED-1309 "fait correctement"
* item[=].item[=].text = "fait correctement"
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "toilette-habit"
* item[=].item[=].code = $terminologie-cisis#MED-1310 "fait habituellement"
* item[=].item[=].text = "fait habituellement"
* item[=].item[+].type = #text
* item[=].item[=].linkId = "toilette-commentaire"
* item[=].item[=].text = "Commentaire"
* item[=].type = #choice
* item[=].linkId = "toilette"
* item[=].code = $icf#d530 "Toileting"
* item[=].text = "Aller aux toilettes"
* item[=].required = false
* item[=].repeats = false
* item[=].answerOption[0].valueCoding = #qf0 "aucun facilitateur"
* item[=].answerOption[+].valueCoding = #qf2 "facilitateur modéré"
* item[=].answerOption[+].valueCoding = #qf4 "facilitateur absolu"
* item[+].item[0].type = #boolean
* item[=].item[=].linkId = "pos-cor-spont"
* item[=].item[=].code = $terminologie-cisis#MED-1307 "fait spontanément"
* item[=].item[=].text = "fait spontanément"
* item[=].item[=].repeats = false
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "pos-cor-tot"
* item[=].item[=].code = $terminologie-cisis#MED-1308 "fait totalement"
* item[=].item[=].text = "fait totalement"
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "pos-cor-correct"
* item[=].item[=].code = $terminologie-cisis#MED-1309 "fait correctement"
* item[=].item[=].text = "fait correctement"
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "pos-corp-habit"
* item[=].item[=].code = $terminologie-cisis#MED-1310 "fait habituellement"
* item[=].item[=].text = "fait habituellement"
* item[=].item[+].type = #text
* item[=].item[=].linkId = "pos-corp-commentaire"
* item[=].item[=].text = "Commentaire"
* item[=].type = #choice
* item[=].linkId = "position-corp"
* item[=].code = $icf#d410 "Changing basic body position"
* item[=].text = "Changer la position corporelle de base"
* item[=].required = false
* item[=].repeats = false
* item[=].answerOption[0].valueCoding = #qf0 "aucun facilitateur"
* item[=].answerOption[+].valueCoding = #qf2 "facilitateur modéré"
* item[=].answerOption[+].valueCoding = #qf4 "facilitateur absolu"
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
* item[=].answerOption[0].valueCoding = #qf0 "aucun facilitateur"
* item[=].answerOption[+].valueCoding = #qf2 "facilitateur modéré"
* item[=].answerOption[+].valueCoding = #qf4 "facilitateur absolu"
* item[+].item[0].type = #boolean
* item[=].item[=].linkId = "deplacer-hors-maison-spont"
* item[=].item[=].code = $terminologie-cisis#MED-1307 "fait spontanément"
* item[=].item[=].text = "fait spontanément"
* item[=].item[=].repeats = false
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "deplacer-hors-maison-tot"
* item[=].item[=].code = $terminologie-cisis#MED-1308 "fait totalement"
* item[=].item[=].text = "fait totalement"
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "deplacer-hors-maison-correct"
* item[=].item[=].code = $terminologie-cisis#MED-1309 "fait correctement"
* item[=].item[=].text = "fait correctement"
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "deplacer-hors-maison-habit"
* item[=].item[=].code = $terminologie-cisis#MED-1310 "fait habituellement"
* item[=].item[=].text = "fait habituellement"
* item[=].item[+].type = #text
* item[=].item[=].linkId = "deplacer-hors-maison-commentaire"
* item[=].item[=].text = "Commentaire"
* item[=].type = #choice
* item[=].linkId = "deplacer-hors-maison"
* item[=].code = $icf#d4602 "Moving around outside the home and other buildings"
* item[=].text = "Se déplacer en dehors de la maison et d'autres bâtiments"
* item[=].required = false
* item[=].repeats = false
* item[=].answerOption[0].valueCoding = #qf0 "aucun facilitateur"
* item[=].answerOption[+].valueCoding = #qf2 "facilitateur modéré"
* item[=].answerOption[+].valueCoding = #qf4 "facilitateur absolu"
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
* item[=].answerOption[0].valueCoding = #qf0 "aucun facilitateur"
* item[=].answerOption[+].valueCoding = #qf2 "facilitateur modéré"
* item[=].answerOption[+].valueCoding = #qf4 "facilitateur absolu"
