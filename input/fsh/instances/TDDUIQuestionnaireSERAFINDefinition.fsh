Instance: tddui-questionnaire-aggir-serafin
InstanceOf: Questionnaire
Description: "Grille d'évaluation SERAFIN"
Usage: #definition

* title = "Évaluation SERAFIN"
* status = #active
* code = $terminologie-cisis#MED-1291 "Evaluation SERAFIN"
* item[0].type = #text
* item[=].linkId = "commentaire-serafin"
* item[=].text = "Commentaire"
* item[=].repeats = false
* item[+].item[0].item[0].type = #integer
* item[=].item[=].item[=].linkId = "besoin-fonc-ment"
* item[=].item[=].item[=].code = $terminologie-SERAFINPH#1.1.1 "Besoins en matière de fonctions mentales, psychiques, cognitives et du système nerveux"
* item[=].item[=].item[=].text = "Besoins en matière de fonctions mentales, psychiques, cognitives et du système nerveux"
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[+].type = #integer
* item[=].item[=].item[=].linkId = "besoin-fonc-sensorielle"
* item[=].item[=].item[=].code = $terminologie-SERAFINPH#1.1.2 "Besoins en matière de fonctions sensorielles"
* item[=].item[=].item[=].text = "Besoins en matière de fonctions sensorielles"
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[+].type = #integer
* item[=].item[=].item[=].linkId = "besoin-douleur"
* item[=].item[=].item[=].code = $terminologie-SERAFINPH#1.1.3 "Besoins en matière de douleur"
* item[=].item[=].item[=].text = "Besoins en matière de douleur"
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[+].type = #integer
* item[=].item[=].item[=].linkId = "besoin-voix"
* item[=].item[=].item[=].code = $terminologie-SERAFINPH#1.1.4 "Besoins relatifs à la voix, à la parole et à l’appareil bucco-dentaire"
* item[=].item[=].item[=].text = "Besoins relatifs à la voix, à la parole et à l'appareil bucco-dentaire"
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[+].type = #integer
* item[=].item[=].item[=].linkId = "besoin-cardio-vasc"
* item[=].item[=].item[=].code = $terminologie-SERAFINPH#1.1.5 "Besoins en matière de fonctions cardio-vasculaire, hématopoïétique, immunitaire et respiratoire"
* item[=].item[=].item[=].text = "Besoins en matière de fonctions cardio-vasculaire, hématopoïétique, immunitaire et respiratoire"
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[+].type = #integer
* item[=].item[=].item[=].linkId = "besoin-dig"
* item[=].item[=].item[=].code = $terminologie-SERAFINPH#1.1.6 "Besoins en matière de fonctions digestive, métabolique et endocrinienne"
* item[=].item[=].item[=].text = "Besoins en matière de fonctions digestive, métabolique et endocrinienne"
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[+].type = #integer
* item[=].item[=].item[=].linkId = "besoin-genito-uri"
* item[=].item[=].item[=].code = $terminologie-SERAFINPH#1.1.7 "Besoins en matière de fonctions génito-urinaire et reproductive"
* item[=].item[=].item[=].text = "Besoins en matière de fonctions génito-urinaire et reproductive"
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[+].type = #integer
* item[=].item[=].item[=].linkId = "besoin-loco-mot"
* item[=].item[=].item[=].code = $terminologie-SERAFINPH#1.1.8 "Besoins en matière de fonctions locomotrices"
* item[=].item[=].item[=].text = "Besoins en matière de fonctions locomotrices"
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[+].type = #integer
* item[=].item[=].item[=].linkId = "besoin-peau"
* item[=].item[=].item[=].code = $terminologie-SERAFINPH#1.1.9 "Besoins relatifs à la peau et aux structures associées"
* item[=].item[=].item[=].text = "Besoins relatifs à la peau et aux structures associées"
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[+].type = #integer
* item[=].item[=].item[=].linkId = "besoin-entretien"
* item[=].item[=].item[=].code = $terminologie-SERAFINPH#1.1.10 "Besoins pour entretenir et prendre soin de sa santé"
* item[=].item[=].item[=].text = "Besoins pour entretenir et prendre soin de sa santé"
* item[=].item[=].item[=].repeats = false
* item[=].item[=].type = #integer
* item[=].item[=].extension.url = "http://example.org/fhir/StructureDefinition/responseScale"
* item[=].item[=].extension.valueString = "0=no,1=yes"
* item[=].item[=].linkId = "besoin-sante-som-psy"
* item[=].item[=].code = $terminologie-SERAFINPH#1.1 "Besoins en matière de santé somatique ou psychique"
* item[=].item[=].text = "Besoins en matière de santé somatique ou psychique"
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[+].item.item[0].type = #integer
* item[=].item[=].item.item[=].linkId = "besoin-entretien-personnel"
* item[=].item[=].item.item[=].code = $terminologie-SERAFINPH#1.2.1.1 "Besoins en lien avec l’entretien personnel"
* item[=].item[=].item.item[=].text = "Besoins en lien avec l'entretien personnel"
* item[=].item[=].item.item[=].repeats = false
* item[=].item[=].item.item[+].type = #integer
* item[=].item[=].item.item[=].linkId = "besoin-relations"
* item[=].item[=].item.item[=].code = $terminologie-SERAFINPH#1.2.1.2 "Besoins en lien avec les relations et les interactions avec autrui"
* item[=].item[=].item.item[=].text = "Besoins en lien avec les relations et les interactions avec autrui"
* item[=].item[=].item.item[=].repeats = false
* item[=].item[=].item.item[+].type = #integer
* item[=].item[=].item.item[=].linkId = "besoin-mobilite"
* item[=].item[=].item.item[=].code = $terminologie-SERAFINPH#1.2.1.3 "Besoins pour la mobilité"
* item[=].item[=].item.item[=].text = "Besoins pour la mobilité"
* item[=].item[=].item.item[=].repeats = false
* item[=].item[=].item.item[+].type = #integer
* item[=].item[=].item.item[=].linkId = "besoin-decision"
* item[=].item[=].item.item[=].code = $terminologie-SERAFINPH#1.2.1.4 "Besoins pour prendre des décisions adaptées et pour la sécurité"
* item[=].item[=].item.item[=].text = "Besoins pour prendre des décisions adaptées et pour la sécurité"
* item[=].item[=].item.item[=].repeats = false
* item[=].item[=].item.type = #integer
* item[=].item[=].item.linkId = "besoin-autonomie-2"
* item[=].item[=].item.code = $terminologie-SERAFINPH#1.2.1 "Besoins en matière d’autonomie"
* item[=].item[=].item.text = "Besoins en matière d'autonomie"
* item[=].item[=].item.repeats = false
* item[=].item[=].type = #integer
* item[=].item[=].extension.url = "http://example.org/fhir/StructureDefinition/responseScale"
* item[=].item[=].extension.valueString = "0=no,1=yes"
* item[=].item[=].linkId = "besoin-autonomie"
* item[=].item[=].code = $terminologie-SERAFINPH#1.2 "Besoins en matière d’autonomie"
* item[=].item[=].text = "Besoins en matière d'autonomie"
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[+].item[0].item.type = #integer
* item[=].item[=].item[=].item.linkId = "besoin-droit-citoyen-2"
* item[=].item[=].item[=].item.code = $terminologie-SERAFINPH#1.3.1.1 "Besoins pour accéder aux droits et à la citoyenneté"
* item[=].item[=].item[=].item.text = "Besoins pour accéder aux droits et à la citoyenneté"
* item[=].item[=].item[=].item.repeats = false
* item[=].item[=].item[=].type = #integer
* item[=].item[=].item[=].linkId = "besoin-droit-citoyen"
* item[=].item[=].item[=].code = $terminologie-SERAFINPH#1.3.1 "Besoins pour accéder aux droits et à la citoyenneté"
* item[=].item[=].item[=].text = "Besoins pour accéder aux droits et à la citoyenneté"
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[+].item[0].type = #integer
* item[=].item[=].item[=].item[=].linkId = "besoin-vivre-logement"
* item[=].item[=].item[=].item[=].code = $terminologie-SERAFINPH#1.3.2.1 "Besoins pour vivre dans un logement"
* item[=].item[=].item[=].item[=].text = "Besoins pour vivre dans un logement"
* item[=].item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].item[+].type = #integer
* item[=].item[=].item[=].item[=].linkId = "besoin-activite-dom"
* item[=].item[=].item[=].item[=].code = $terminologie-SERAFINPH#1.3.2.2 "Besoins pour accomplir les activités domestiques"
* item[=].item[=].item[=].item[=].text = "Besoins pour accomplir les activités domestiques"
* item[=].item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].type = #integer
* item[=].item[=].item[=].linkId = "besoin-logement"
* item[=].item[=].item[=].code = $terminologie-SERAFINPH#1.3.2 "Besoins pour vivre dans un logement et accomplir les activités domestiques"
* item[=].item[=].item[=].text = "Besoins pour vivre dans un logement et accomplir les activités domestiques"
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[+].item[0].type = #integer
* item[=].item[=].item[=].item[=].linkId = "besoin-vie-scolaire"
* item[=].item[=].item[=].item[=].code = $terminologie-SERAFINPH#1.3.3.1 "Besoins en lien avec la vie scolaire et étudiante"
* item[=].item[=].item[=].item[=].text = "Besoins en lien avec la vie scolaire et étudiante"
* item[=].item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].item[+].type = #integer
* item[=].item[=].item[=].item[=].linkId = "besoin-activite-domestique"
* item[=].item[=].item[=].item[=].code = $terminologie-SERAFINPH#1.3.3.2 "Besoins en lien avec le travail et l’emploi"
* item[=].item[=].item[=].item[=].text = "Besoins en lien avec le travail et l’emploi"
* item[=].item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].item[+].type = #integer
* item[=].item[=].item[=].item[=].linkId = "besoin-apprentissage"
* item[=].item[=].item[=].item[=].code = $terminologie-SERAFINPH#1.3.3.3 "Besoins transversaux en matière d'apprentissages"
* item[=].item[=].item[=].item[=].text = "Besoins transversaux en matière d'apprentissages"
* item[=].item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].item[+].type = #integer
* item[=].item[=].item[=].item[=].linkId = "besoin-famille"
* item[=].item[=].item[=].item[=].code = $terminologie-SERAFINPH#1.3.3.4 "Besoins pour la vie familiale, la parentalité, la vie affective et sexuelle"
* item[=].item[=].item[=].item[=].text = "Besoins pour la vie familiale, la parentalité, la vie affective et sexuelle"
* item[=].item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].item[+].type = #integer
* item[=].item[=].item[=].item[=].linkId = "besoin-pair-aidant"
* item[=].item[=].item[=].item[=].code = $terminologie-SERAFINPH#1.3.3.5 "Besoins pour apprendre à être pair-aidant"
* item[=].item[=].item[=].item[=].text = "Besoins pour apprendre à être pair-aidant"
* item[=].item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].type = #integer
* item[=].item[=].item[=].linkId = "besoin-insertion-sociale"
* item[=].item[=].item[=].code = $terminologie-SERAFINPH#1.3.3 "Besoins pour l'insertion sociale et professionnelle et pour exercer ses rôles sociaux"
* item[=].item[=].item[=].text = "Besoins pour l'insertion sociale et professionnelle et pour exercer ses rôles sociaux"
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[+].item[0].type = #integer
* item[=].item[=].item[=].item[=].linkId = "besoin-vie-sociale"
* item[=].item[=].item[=].item[=].code = $terminologie-SERAFINPH#1.3.4.1 "Besoins pour participer à la vie sociale"
* item[=].item[=].item[=].item[=].text = "Besoins pour participer à la vie sociale"
* item[=].item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].item[+].type = #integer
* item[=].item[=].item[=].item[=].linkId = "besoin-moyen-transport"
* item[=].item[=].item[=].item[=].code = $terminologie-SERAFINPH#1.3.4.2 "Besoins pour se déplacer avec un moyen de transport"
* item[=].item[=].item[=].item[=].text = "Besoins pour se déplacer avec un moyen de transport"
* item[=].item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].type = #integer
* item[=].item[=].item[=].linkId = "besoin-vie-sociale-moyen-transport"
* item[=].item[=].item[=].code = $terminologie-SERAFINPH#1.3.4 "Besoins pour participer à la vie sociale et se déplacer avec un moyen de transport"
* item[=].item[=].item[=].text = "Besoins pour participer à la vie sociale et se déplacer avec un moyen de transport"
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[+].item.type = #integer
* item[=].item[=].item[=].item.linkId = "besoin-economie-2"
* item[=].item[=].item[=].item.code = $terminologie-SERAFINPH#1.3.5.1 "Besoins en matière de ressources et d'autosuffisance économique"
* item[=].item[=].item[=].item.text = "Besoins en matière de ressources et d'autosuffisance économique"
* item[=].item[=].item[=].item.repeats = false
* item[=].item[=].item[=].type = #integer
* item[=].item[=].item[=].linkId = "besoin-economie"
* item[=].item[=].item[=].code = $terminologie-SERAFINPH#1.3.5 "Besoins en matière de ressources et d'autosuffisance économique"
* item[=].item[=].item[=].text = "Besoins en matière de ressources et d'autosuffisance économique"
* item[=].item[=].item[=].repeats = false
* item[=].item[=].type = #integer
* item[=].item[=].extension.url = "http://example.org/fhir/StructureDefinition/responseScale"
* item[=].item[=].extension.valueString = "0=no,1=yes"
* item[=].item[=].linkId = "besoin-participation-sociale"
* item[=].item[=].code = $terminologie-SERAFINPH#1.3 "Besoins pour la participation sociale"
* item[=].item[=].text = "Besoins pour la participation sociale"
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].type = #integer
* item[=].extension.url = "http://example.org/fhir/StructureDefinition/responseScale"
* item[=].extension.valueString = "0=no,1=yes"
* item[=].linkId = "besoins"
* item[=].code = $terminologie-SERAFINPH#1 "Besoins"
* item[=].text = "Besoins"
* item[=].required = false
* item[=].repeats = false
