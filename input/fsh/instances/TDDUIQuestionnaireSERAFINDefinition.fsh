Instance: tddui-questionnaire-serafin
InstanceOf: Questionnaire
Description: "Grille d'évaluation SERAFIN"
Usage: #definition

* title = "Évaluation SERAFIN"
* status = #active
* code = $terminologie-cisis#MED-1291 "Evaluation SERAFIN"

* item[0].type = #integer
* item[=].linkId = "besoin-serafin"
* item[=].code = $terminologie-SERAFINPH#1 "Besoins"
* item[=].text = "Besoins"
* item[+].type = #integer
* item[=].linkId = "besoin-sante-som-psy"
* item[=].code = $terminologie-SERAFINPH#1.1 "Besoins en matière de santé somatique ou psychique"
* item[=].text = "Besoins en matière de santé somatique ou psychique"
* item[+].type = #integer
* item[=].linkId = "besoin-fonc-ment"
* item[=].code = $terminologie-SERAFINPH#1.1.1 "Besoins en matière de fonctions mentales, psychiques, cognitives et du système nerveux"
* item[=].text = "Besoins en matière de fonctions mentales, psychiques, cognitives et du système nerveux"
* item[+].type = #integer
* item[=].linkId = "besoin-fonc-sensorielle"
* item[=].code = $terminologie-SERAFINPH#1.1.2 "Besoins en matière de fonctions sensorielles"
* item[=].text = "Besoins en matière de fonctions sensorielles"
* item[+].type = #integer
* item[=].linkId = "besoin-douleur"
* item[=].code = $terminologie-SERAFINPH#1.1.3 "Besoins en matière de douleur"
* item[=].text = "Besoins en matière de douleur"
* item[+].type = #integer
* item[=].linkId = "besoin-voix"
* item[=].code = $terminologie-SERAFINPH#1.1.4 "Besoins relatifs à la voix, à la parole et à l’appareil bucco-dentaire"
* item[=].text = "Besoins relatifs à la voix, à la parole et à l'appareil bucco-dentaire"
* item[+].type = #integer
* item[=].linkId = "besoin-cardio-vasc"
* item[=].code = $terminologie-SERAFINPH#1.1.5 "Besoins en matière de fonctions cardio-vasculaire, hématopoïétique, immunitaire et respiratoire"
* item[=].text = "Besoins en matière de fonctions cardio-vasculaire, hématopoïétique, immunitaire et respiratoire"
* item[+].type = #integer
* item[=].linkId = "besoin-dig"
* item[=].code = $terminologie-SERAFINPH#1.1.6 "Besoins en matière de fonctions digestive, métabolique et endocrinienne"
* item[=].text = "Besoins en matière de fonctions digestive, métabolique et endocrinienne"
* item[+].type = #integer
* item[=].linkId = "besoin-genito-uri"
* item[=].code = $terminologie-SERAFINPH#1.1.7 "Besoins en matière de fonctions génito-urinaire et reproductive"
* item[=].text = "Besoins en matière de fonctions génito-urinaire et reproductive"
* item[+].type = #integer
* item[=].linkId = "besoin-loco-mot"
* item[=].code = $terminologie-SERAFINPH#1.1.8 "Besoins en matière de fonctions locomotrices"
* item[=].text = "Besoins en matière de fonctions locomotrices"
* item[+].type = #integer
* item[=].linkId = "besoin-peau"
* item[=].code = $terminologie-SERAFINPH#1.1.9 "Besoins relatifs à la peau et aux structures associées"
* item[=].text = "Besoins relatifs à la peau et aux structures associées"
* item[+].type = #integer
* item[=].linkId = "besoin-entretien"
* item[=].code = $terminologie-SERAFINPH#1.1.10 "Besoins pour entretenir et prendre soin de sa santé"
* item[=].text = "Besoins pour entretenir et prendre soin de sa santé"
* item[+].type = #integer
* item[=].linkId = "besoin-autonomie"
* item[=].code = $terminologie-SERAFINPH#1.2 "Besoins en matière d’autonomie"
* item[=].text = "Besoins en matière d'autonomie"
* item[+].type = #integer
* item[=].linkId = "besoin-entretien-personnel"
* item[=].code = $terminologie-SERAFINPH#1.2.1.1 "Besoins en lien avec l’entretien personnel"
* item[=].text = "Besoins en lien avec l'entretien personnel"
* item[+].type = #integer
* item[=].linkId = "besoin-relations"
* item[=].code = $terminologie-SERAFINPH#1.2.1.2 "Besoins en lien avec les relations et les interactions avec autrui"
* item[=].text = "Besoins en lien avec les relations et les interactions avec autrui"
* item[+].type = #integer
* item[=].linkId = "besoin-mobilite"
* item[=].code = $terminologie-SERAFINPH#1.2.1.3 "Besoins pour la mobilité"
* item[=].text = "Besoins pour la mobilité"
* item[+].type = #integer
* item[=].linkId = "besoin-decision"
* item[=].code = $terminologie-SERAFINPH#1.2.1.4 "Besoins pour prendre des décisions adaptées et pour la sécurité"
* item[=].text = "Besoins pour prendre des décisions adaptées et pour la sécurité"
* item[+].type = #integer
* item[=].linkId = "besoin-participation-sociale"
* item[=].code = $terminologie-SERAFINPH#1.3 "Besoins pour la participation sociale"
* item[=].text = "Besoins pour la participation sociale"
* item[+].type = #integer
* item[=].linkId = "besoin-droit-citoyen"
* item[=].code = $terminologie-SERAFINPH#1.3.1 "Besoins pour accéder aux droits et à la citoyenneté"
* item[=].text = "Besoins pour accéder aux droits et à la citoyenneté"
* item[+].type = #integer
* item[=].linkId = "besoin-logement"
* item[=].code = $terminologie-SERAFINPH#1.3.2 "Besoins pour vivre dans un logement et accomplir les activités domestiques"
* item[=].text = "Besoins pour vivre dans un logement et accomplir les activités domestiques"
* item[+].type = #integer
* item[=].linkId = "besoin-vivre-logement"
* item[=].code = $terminologie-SERAFINPH#1.3.2.1 "Besoins pour vivre dans un logement"
* item[=].text = "Besoins pour vivre dans un logement"
* item[+].type = #integer
* item[=].linkId = "besoin-activite-dom"
* item[=].code = $terminologie-SERAFINPH#1.3.2.2 "Besoins pour accomplir les activités domestiques"
* item[=].text = "Besoins pour accomplir les activités domestiques"
* item[+].type = #integer
* item[=].linkId = "besoin-insertion-sociale"
* item[=].code = $terminologie-SERAFINPH#1.3.3 "Besoins pour l'insertion sociale et professionnelle et pour exercer ses rôles sociaux"
* item[=].text = "Besoins pour l'insertion sociale et professionnelle et pour exercer ses rôles sociaux"
* item[+].type = #integer
* item[=].linkId = "besoin-vie-scolaire"
* item[=].code = $terminologie-SERAFINPH#1.3.3.1 "Besoins en lien avec la vie scolaire et étudiante"
* item[=].text = "Besoins en lien avec la vie scolaire et étudiante"
* item[+].type = #integer
* item[=].linkId = "besoin-activite-domestique"
* item[=].code = $terminologie-SERAFINPH#1.3.3.2 "Besoins en lien avec le travail et l’emploi"
* item[=].text = "Besoins en lien avec le travail et l’emploi"
* item[+].type = #integer
* item[=].linkId = "besoin-apprentissage"
* item[=].code = $terminologie-SERAFINPH#1.3.3.3 "Besoins transversaux en matière d'apprentissages"
* item[=].text = "Besoins transversaux en matière d'apprentissages"
* item[+].type = #integer
* item[=].linkId = "besoin-famille"
* item[=].code = $terminologie-SERAFINPH#1.3.3.4 "Besoins pour la vie familiale, la parentalité, la vie affective et sexuelle"
* item[=].text = "Besoins pour la vie familiale, la parentalité, la vie affective et sexuelle"
* item[+].type = #integer
* item[=].linkId = "besoin-pair-aidant"
* item[=].code = $terminologie-SERAFINPH#1.3.3.5 "Besoins pour apprendre à être pair-aidant"
* item[=].text = "Besoins pour apprendre à être pair-aidant"
* item[+].type = #integer
* item[=].linkId = "besoin-vie-sociale-moyen-transport"
* item[=].code = $terminologie-SERAFINPH#1.3.4 "Besoins pour participer à la vie sociale et se déplacer avec un moyen de transport"
* item[=].text = "Besoins pour participer à la vie sociale et se déplacer avec un moyen de transport"
* item[+].type = #integer
* item[=].linkId = "besoin-vie-sociale"
* item[=].code = $terminologie-SERAFINPH#1.3.4.1 "Besoins pour participer à la vie sociale"
* item[=].text = "Besoins pour participer à la vie sociale"
* item[+].type = #integer
* item[=].linkId = "besoin-moyen-transport"
* item[=].code = $terminologie-SERAFINPH#1.3.4.2 "Besoins pour se déplacer avec un moyen de transport"
* item[=].text = "Besoins pour se déplacer avec un moyen de transport"
* item[+].type = #integer
* item[=].linkId = "besoin-economie"
* item[=].code = $terminologie-SERAFINPH#1.3.5 "Besoins en matière de ressources et d'autosuffisance économique"
* item[=].text = "Besoins en matière de ressources et d'autosuffisance économique"
