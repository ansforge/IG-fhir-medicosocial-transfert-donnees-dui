Instance: tddui-questionnaire-aggir-ph-ssiad
InstanceOf: Questionnaire
Description: "Grille d'évaluation AGGIR PH SSIAD"
Usage: #definition

* title = "Évaluation AGGIR PH SSIAD"
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
* item[=].item[0].item[0].type = #boolean
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
* item[=].item[=].item[=].linkId = "laver-habit"
* item[=].item[=].item[=].code = $terminologie-cisis#MED-1310 "fait habituellement"
* item[=].item[=].item[=].text = "fait habituellement"
* item[=].item[=].item[+].type = #text
* item[=].item[=].item[=].linkId = "commentaire-se-laver"
* item[=].item[=].item[=].text = "Commentaire"
* item[=].item[=].type = #choice
* item[=].item[=].linkId = "se-laver"
* item[=].item[=].code = $icf#d510 "Washing oneself"
* item[=].item[=].text = "Se laver"
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[=].answerOption[0].valueCoding = $icf#qf0 "aucun facilitateur"
* item[=].item[=].answerOption[+].valueCoding = $icf#qf2 "facilitateur modéré"
* item[=].item[=].answerOption[+].valueCoding = $icf#qf4 "facilitateur absolu"
* item[=].item[+].item[0].type = #boolean
* item[=].item[=].item[=].linkId = "habiller-spont"
* item[=].item[=].item[=].code = $terminologie-cisis#MED-1307 "fait spontanément"
* item[=].item[=].item[=].text = "fait spontanément"
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].linkId = "habiller-tot"
* item[=].item[=].item[=].code = $terminologie-cisis#MED-1308 "fait totalement"
* item[=].item[=].item[=].text = "fait totalement"
* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].linkId = "habiller-correct"
* item[=].item[=].item[=].code = $terminologie-cisis#MED-1309 "fait correctement"
* item[=].item[=].item[=].text = "fait correctement"
* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].linkId = "habiller-habit"
* item[=].item[=].item[=].code = $terminologie-cisis#MED-1310 "fait habituellement"
* item[=].item[=].item[=].text = "fait habituellement"
* item[=].item[=].item[+].type = #text
* item[=].item[=].item[=].linkId = "habiller-commentaire"
* item[=].item[=].item[=].text = "Commentaire"
* item[=].item[=].type = #choice
* item[=].item[=].linkId = "s'habiller"
* item[=].item[=].code = $icf#d540 "Dressing"
* item[=].item[=].text = "S'habiller"
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
* item[=].item[=].item[=].linkId = "toilette-spont"
* item[=].item[=].item[=].code = $terminologie-cisis#MED-1307 "fait spontanément"
* item[=].item[=].item[=].text = "fait spontanément"
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].linkId = "toilette-tot"
* item[=].item[=].item[=].code = $terminologie-cisis#MED-1308 "fait totalement"
* item[=].item[=].item[=].text = "fait totalement"
* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].linkId = "toilette-correct"
* item[=].item[=].item[=].code = $terminologie-cisis#MED-1309 "fait correctement"
* item[=].item[=].item[=].text = "fait correctement"
* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].linkId = "toilette-habit"
* item[=].item[=].item[=].code = $terminologie-cisis#MED-1310 "fait habituellement"
* item[=].item[=].item[=].text = "fait habituellement"
* item[=].item[=].item[+].type = #text
* item[=].item[=].item[=].linkId = "toilette-commentaire"
* item[=].item[=].item[=].text = "Commentaire"
* item[=].item[=].type = #choice
* item[=].item[=].linkId = "aller-aux-toilettes"
* item[=].item[=].code = $icf#d530 "Toileting"
* item[=].item[=].text = "Aller aux toilettes"
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[=].answerOption[0].valueCoding = $icf#qf0 "aucun facilitateur"
* item[=].item[=].answerOption[+].valueCoding = $icf#qf2 "facilitateur modéré"
* item[=].item[=].answerOption[+].valueCoding = $icf#qf4 "facilitateur absolu"
* item[=].item[+].item[0].type = #boolean
* item[=].item[=].item[=].linkId = "position-corps-spont"
* item[=].item[=].item[=].code = $terminologie-cisis#MED-1307 "fait spontanément"
* item[=].item[=].item[=].text = "fait spontanément"
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].linkId = "position-corps-tot"
* item[=].item[=].item[=].code = $terminologie-cisis#MED-1308 "fait totalement"
* item[=].item[=].item[=].text = "fait totalement"
* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].linkId = "position-corps-correct"
* item[=].item[=].item[=].code = $terminologie-cisis#MED-1309 "fait correctement"
* item[=].item[=].item[=].text = "fait correctement"
* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].linkId = "position-corps-habit"
* item[=].item[=].item[=].code = $terminologie-cisis#MED-1310 "fait habituellement"
* item[=].item[=].item[=].text = "fait habituellement"
* item[=].item[=].item[+].type = #text
* item[=].item[=].item[=].linkId = "position-corps-commentaire"
* item[=].item[=].item[=].text = "Commentaire"
* item[=].item[=].type = #choice
* item[=].item[=].linkId = "position-corps"
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
* item[=].item[=].item[=].linkId = "deplacer-hors-maison-spont"
* item[=].item[=].item[=].code = $terminologie-cisis#MED-1307 "fait spontanément"
* item[=].item[=].item[=].text = "fait spontanément"
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].linkId = "deplacer-hors-maison-tot"
* item[=].item[=].item[=].code = $terminologie-cisis#MED-1308 "fait totalement"
* item[=].item[=].item[=].text = "fait totalement"
* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].linkId = "deplacer-hors-maison-correct"
* item[=].item[=].item[=].code = $terminologie-cisis#MED-1309 "fait correctement"
* item[=].item[=].item[=].text = "fait correctement"
* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].linkId = "deplacer-hors-maison-habit"
* item[=].item[=].item[=].code = $terminologie-cisis#MED-1310 "fait habituellement"
* item[=].item[=].item[=].text = "fait habituellement"
* item[=].item[=].item[+].type = #text
* item[=].item[=].item[=].linkId = "deplacer-hors-maison-commentaire"
* item[=].item[=].item[=].text = "Commentaire"
* item[=].item[=].type = #choice
* item[=].item[=].linkId = "deplacer-hors-maison"
* item[=].item[=].code = $icf#d4602 "Moving around outside the home and other buildings"
* item[=].item[=].text = "Se déplacer en dehors de la maison et d'autres bâtiments"
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[=].answerOption[0].valueCoding = $icf#qf0 "aucun facilitateur"
* item[=].item[=].answerOption[+].valueCoding = $icf#qf2 "facilitateur modéré"
* item[=].item[=].answerOption[+].valueCoding = $icf#qf4 "facilitateur absolu"
* item[=].item[+].item[0].type = #boolean
* item[=].item[=].item[=].linkId = "appareil-spont"
* item[=].item[=].item[=].code = $terminologie-cisis#MED-1307 "fait spontanément"
* item[=].item[=].item[=].text = "fait spontanément"
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].linkId = "appareil-tot"
* item[=].item[=].item[=].code = $terminologie-cisis#MED-1308 "fait totalement"
* item[=].item[=].item[=].text = "fait totalement"
* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].linkId = "appareil-correct"
* item[=].item[=].item[=].code = $terminologie-cisis#MED-1309 "fait correctement"
* item[=].item[=].item[=].text = "fait correctement"
* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].linkId = "appareil-habit"
* item[=].item[=].item[=].code = $terminologie-cisis#MED-1310 "fait habituellement"
* item[=].item[=].item[=].text = "fait habituellement"
* item[=].item[=].item[+].type = #text
* item[=].item[=].item[=].linkId = "appareil-commentaire"
* item[=].item[=].item[=].text = "Commentaire"
* item[=].item[=].type = #choice
* item[=].item[=].linkId = "appareil-communication"
* item[=].item[=].code = $icf#d3608 "Using communication devices and techniques, other specified"
* item[=].item[=].text = "Utiliser d'autres appareils et techniques de communication précisés"
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[=].answerOption[0].valueCoding = $icf#qf0 "aucun facilitateur"
* item[=].item[=].answerOption[+].valueCoding = $icf#qf2 "facilitateur modéré"
* item[=].item[=].answerOption[+].valueCoding = $icf#qf4 "facilitateur absolu"
* item[+].type = #text
* item[=].linkId = "commentaire-eval"
* item[=].text = "Commentaire"
* item[=].required = false
* item[=].repeats = false