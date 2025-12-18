# Évaluation AGGIR PA SSIAD - Médicosocial - Transfert de données DUI v2.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Évaluation AGGIR PA SSIAD**

## Questionnaire: Évaluation AGGIR PA SSIAD 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/tddui/Questionnaire/tddui-questionnaire-aggir-pa-ssiad | *Version*:2.1.0 |
| Active as of 2025-12-18 | *Computable Name*: |

 
Grille d'évaluation AGGIR PA SSIAD 



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "tddui-questionnaire-aggir-pa-ssiad",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/Questionnaire/tddui-questionnaire-aggir-pa-ssiad",
  "version" : "2.1.0",
  "title" : "Évaluation AGGIR PA SSIAD",
  "status" : "active",
  "date" : "2025-12-18T16:46:13+00:00",
  "publisher" : "ANS",
  "contact" : [
    {
      "name" : "ANS",
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://esante.gouv.fr"
        }
      ]
    }
  ],
  "description" : "Grille d'évaluation AGGIR PA SSIAD",
  "jurisdiction" : [
    {
      "coding" : [
        {
          "system" : "urn:iso:std:iso:3166",
          "code" : "FR",
          "display" : "FRANCE"
        }
      ]
    }
  ],
  "code" : [
    {
      "system" : "https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis",
      "code" : "MED-1293",
      "display" : "Evaluation AGGIR PA SSIAD"
    }
  ],
  "item" : [
    {
      "linkId" : "resultat-eval",
      "text" : "Résultat évaluation",
      "type" : "choice",
      "required" : false,
      "repeats" : false,
      "answerOption" : [
        {
          "valueCoding" : {
            "system" : "https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis",
            "code" : "MED-339",
            "display" : "GIR-1"
          }
        },
        {
          "valueCoding" : {
            "system" : "https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis",
            "code" : "MED-340",
            "display" : "GIR-2"
          }
        },
        {
          "valueCoding" : {
            "system" : "https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis",
            "code" : "MED-341",
            "display" : "GIR-3"
          }
        },
        {
          "valueCoding" : {
            "system" : "https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis",
            "code" : "MED-342",
            "display" : "GIR-4"
          }
        },
        {
          "valueCoding" : {
            "system" : "https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis",
            "code" : "MED-343",
            "display" : "GIR-5"
          }
        },
        {
          "valueCoding" : {
            "system" : "https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis",
            "code" : "MED-344",
            "display" : "GIR-6"
          }
        }
      ],
      "item" : [
        {
          "linkId" : "fonction-pensee",
          "code" : [
            {
              "system" : "http://hl7.org/fhir/sid/icf",
              "code" : "b160",
              "display" : "Thought functions"
            }
          ],
          "text" : "Fonctions de la pensée",
          "type" : "choice",
          "required" : false,
          "repeats" : false,
          "answerOption" : [
            {
              "valueCoding" : {
                "system" : "http://hl7.org/fhir/sid/icf",
                "code" : "qf0",
                "display" : "aucun facilitateur"
              }
            },
            {
              "valueCoding" : {
                "system" : "http://hl7.org/fhir/sid/icf",
                "code" : "qf2",
                "display" : "facilitateur modéré"
              }
            },
            {
              "valueCoding" : {
                "system" : "http://hl7.org/fhir/sid/icf",
                "code" : "qf4",
                "display" : "facilitateur absolu"
              }
            }
          ],
          "item" : [
            {
              "linkId" : "pensee-spont",
              "code" : [
                {
                  "system" : "https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis",
                  "code" : "MED-1307",
                  "display" : "fait spontanément"
                }
              ],
              "text" : "fait spontanément",
              "type" : "boolean",
              "repeats" : false
            },
            {
              "linkId" : "pensee-tot",
              "code" : [
                {
                  "system" : "https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis",
                  "code" : "MED-1308",
                  "display" : "fait totalement"
                }
              ],
              "text" : "fait totalement",
              "type" : "boolean"
            },
            {
              "linkId" : "pensee-correct",
              "code" : [
                {
                  "system" : "https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis",
                  "code" : "MED-1309",
                  "display" : "fait correctement"
                }
              ],
              "text" : "fait correctement",
              "type" : "boolean"
            },
            {
              "linkId" : "pensee-habit",
              "code" : [
                {
                  "system" : "https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis",
                  "code" : "MED-1310",
                  "display" : "fait habituellement"
                }
              ],
              "text" : "fait habituellement",
              "type" : "boolean"
            }
          ]
        },
        {
          "linkId" : "fonction-orientation",
          "code" : [
            {
              "system" : "http://hl7.org/fhir/sid/icf",
              "code" : "b114",
              "display" : "Orientation functions"
            }
          ],
          "text" : "Fonctions d'orientation",
          "type" : "choice",
          "required" : false,
          "repeats" : false,
          "answerOption" : [
            {
              "valueCoding" : {
                "system" : "http://hl7.org/fhir/sid/icf",
                "code" : "qf0",
                "display" : "aucun facilitateur"
              }
            },
            {
              "valueCoding" : {
                "system" : "http://hl7.org/fhir/sid/icf",
                "code" : "qf2",
                "display" : "facilitateur modéré"
              }
            },
            {
              "valueCoding" : {
                "system" : "http://hl7.org/fhir/sid/icf",
                "code" : "qf4",
                "display" : "facilitateur absolu"
              }
            }
          ],
          "item" : [
            {
              "linkId" : "orientation-spont",
              "code" : [
                {
                  "system" : "https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis",
                  "code" : "MED-1307",
                  "display" : "fait spontanément"
                }
              ],
              "text" : "fait spontanément",
              "type" : "boolean",
              "repeats" : false
            },
            {
              "linkId" : "orientation-tot",
              "code" : [
                {
                  "system" : "https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis",
                  "code" : "MED-1308",
                  "display" : "fait totalement"
                }
              ],
              "text" : "fait totalement",
              "type" : "boolean"
            },
            {
              "linkId" : "orientation-correct",
              "code" : [
                {
                  "system" : "https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis",
                  "code" : "MED-1309",
                  "display" : "fait correctement"
                }
              ],
              "text" : "fait correctement",
              "type" : "boolean"
            },
            {
              "linkId" : "orientation-habit",
              "code" : [
                {
                  "system" : "https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis",
                  "code" : "MED-1310",
                  "display" : "fait habituellement"
                }
              ],
              "text" : "fait habituellement",
              "type" : "boolean"
            }
          ]
        },
        {
          "linkId" : "se-laver",
          "code" : [
            {
              "system" : "http://hl7.org/fhir/sid/icf",
              "code" : "d5100",
              "display" : "Washing body parts"
            }
          ],
          "text" : "Se laver des parties du corps",
          "type" : "choice",
          "required" : false,
          "repeats" : false,
          "answerOption" : [
            {
              "valueCoding" : {
                "system" : "http://hl7.org/fhir/sid/icf",
                "code" : "qf0",
                "display" : "aucun facilitateur"
              }
            },
            {
              "valueCoding" : {
                "system" : "http://hl7.org/fhir/sid/icf",
                "code" : "qf2",
                "display" : "facilitateur modéré"
              }
            },
            {
              "valueCoding" : {
                "system" : "http://hl7.org/fhir/sid/icf",
                "code" : "qf4",
                "display" : "facilitateur absolu"
              }
            }
          ],
          "item" : [
            {
              "linkId" : "laver-spont",
              "code" : [
                {
                  "system" : "https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis",
                  "code" : "MED-1307",
                  "display" : "fait spontanément"
                }
              ],
              "text" : "fait spontanément",
              "type" : "boolean",
              "repeats" : false
            },
            {
              "linkId" : "laver-tot",
              "code" : [
                {
                  "system" : "https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis",
                  "code" : "MED-1308",
                  "display" : "fait totalement"
                }
              ],
              "text" : "fait totalement",
              "type" : "boolean"
            },
            {
              "linkId" : "laver-correct",
              "code" : [
                {
                  "system" : "https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis",
                  "code" : "MED-1309",
                  "display" : "fait correctement"
                }
              ],
              "text" : "fait correctement",
              "type" : "boolean"
            },
            {
              "linkId" : "laver-habit",
              "code" : [
                {
                  "system" : "https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis",
                  "code" : "MED-1310",
                  "display" : "fait habituellement"
                }
              ],
              "text" : "fait habituellement",
              "type" : "boolean"
            }
          ]
        },
        {
          "linkId" : "prendre-soin",
          "code" : [
            {
              "system" : "http://hl7.org/fhir/sid/icf",
              "code" : "d520",
              "display" : "Caring for body parts"
            }
          ],
          "text" : "Prendre soin des parties de son corps",
          "type" : "choice",
          "required" : false,
          "repeats" : false,
          "answerOption" : [
            {
              "valueCoding" : {
                "system" : "http://hl7.org/fhir/sid/icf",
                "code" : "qf0",
                "display" : "aucun facilitateur"
              }
            },
            {
              "valueCoding" : {
                "system" : "http://hl7.org/fhir/sid/icf",
                "code" : "qf2",
                "display" : "facilitateur modéré"
              }
            },
            {
              "valueCoding" : {
                "system" : "http://hl7.org/fhir/sid/icf",
                "code" : "qf4",
                "display" : "facilitateur absolu"
              }
            }
          ],
          "item" : [
            {
              "linkId" : "prendre-soin-spont",
              "code" : [
                {
                  "system" : "https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis",
                  "code" : "MED-1307",
                  "display" : "fait spontanément"
                }
              ],
              "text" : "fait spontanément",
              "type" : "boolean",
              "repeats" : false
            },
            {
              "linkId" : "prendre-soin-tot",
              "code" : [
                {
                  "system" : "https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis",
                  "code" : "MED-1308",
                  "display" : "fait totalement"
                }
              ],
              "text" : "fait totalement",
              "type" : "boolean"
            },
            {
              "linkId" : "prendre-soin-correct",
              "code" : [
                {
                  "system" : "https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis",
                  "code" : "MED-1309",
                  "display" : "fait correctement"
                }
              ],
              "text" : "fait correctement",
              "type" : "boolean"
            },
            {
              "linkId" : "prendre-soin-habit",
              "code" : [
                {
                  "system" : "https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis",
                  "code" : "MED-1310",
                  "display" : "fait habituellement"
                }
              ],
              "text" : "fait habituellement",
              "type" : "boolean"
            }
          ]
        },
        {
          "linkId" : "mettre-vetement",
          "code" : [
            {
              "system" : "http://hl7.org/fhir/sid/icf",
              "code" : "d5400",
              "display" : "Putting on clothes"
            }
          ],
          "text" : "Mettre des vêtements",
          "type" : "choice",
          "required" : false,
          "repeats" : false,
          "answerOption" : [
            {
              "valueCoding" : {
                "system" : "http://hl7.org/fhir/sid/icf",
                "code" : "qf0",
                "display" : "aucun facilitateur"
              }
            },
            {
              "valueCoding" : {
                "system" : "http://hl7.org/fhir/sid/icf",
                "code" : "qf2",
                "display" : "facilitateur modéré"
              }
            },
            {
              "valueCoding" : {
                "system" : "http://hl7.org/fhir/sid/icf",
                "code" : "qf4",
                "display" : "facilitateur absolu"
              }
            }
          ],
          "item" : [
            {
              "linkId" : "mettre-vetement-spont",
              "code" : [
                {
                  "system" : "https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis",
                  "code" : "MED-1307",
                  "display" : "fait spontanément"
                }
              ],
              "text" : "fait spontanément",
              "type" : "boolean",
              "repeats" : false
            },
            {
              "linkId" : "mettre-vetement-tot",
              "code" : [
                {
                  "system" : "https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis",
                  "code" : "MED-1308",
                  "display" : "fait totalement"
                }
              ],
              "text" : "fait totalement",
              "type" : "boolean"
            },
            {
              "linkId" : "mettre-vetement-correct",
              "code" : [
                {
                  "system" : "https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis",
                  "code" : "MED-1309",
                  "display" : "fait correctement"
                }
              ],
              "text" : "fait correctement",
              "type" : "boolean"
            },
            {
              "linkId" : "mettre-vetement-habit",
              "code" : [
                {
                  "system" : "https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis",
                  "code" : "MED-1310",
                  "display" : "fait habituellement"
                }
              ],
              "text" : "fait habituellement",
              "type" : "boolean"
            }
          ]
        },
        {
          "linkId" : "motricite-fine",
          "code" : [
            {
              "system" : "http://hl7.org/fhir/sid/icf",
              "code" : "d440",
              "display" : "Fine hand use"
            }
          ],
          "text" : "Activités de motricité fine",
          "type" : "choice",
          "required" : false,
          "repeats" : false,
          "answerOption" : [
            {
              "valueCoding" : {
                "system" : "http://hl7.org/fhir/sid/icf",
                "code" : "qf0",
                "display" : "aucun facilitateur"
              }
            },
            {
              "valueCoding" : {
                "system" : "http://hl7.org/fhir/sid/icf",
                "code" : "qf2",
                "display" : "facilitateur modéré"
              }
            },
            {
              "valueCoding" : {
                "system" : "http://hl7.org/fhir/sid/icf",
                "code" : "qf4",
                "display" : "facilitateur absolu"
              }
            }
          ],
          "item" : [
            {
              "linkId" : "motricite-fine-spont",
              "code" : [
                {
                  "system" : "https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis",
                  "code" : "MED-1307",
                  "display" : "fait spontanément"
                }
              ],
              "text" : "fait spontanément",
              "type" : "boolean",
              "repeats" : false
            },
            {
              "linkId" : "motricite-fine-tot",
              "code" : [
                {
                  "system" : "https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis",
                  "code" : "MED-1308",
                  "display" : "fait totalement"
                }
              ],
              "text" : "fait totalement",
              "type" : "boolean"
            },
            {
              "linkId" : "motricite-fine-correct",
              "code" : [
                {
                  "system" : "https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis",
                  "code" : "MED-1309",
                  "display" : "fait correctement"
                }
              ],
              "text" : "fait correctement",
              "type" : "boolean"
            },
            {
              "linkId" : "motricite-fine-habit",
              "code" : [
                {
                  "system" : "https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis",
                  "code" : "MED-1310",
                  "display" : "fait habituellement"
                }
              ],
              "text" : "fait habituellement",
              "type" : "boolean"
            }
          ]
        },
        {
          "linkId" : "mettre-chaussure",
          "code" : [
            {
              "system" : "http://hl7.org/fhir/sid/icf",
              "code" : "d5402",
              "display" : "Putting on footwear"
            }
          ],
          "text" : "Mettre des chaussures",
          "type" : "choice",
          "required" : false,
          "repeats" : false,
          "answerOption" : [
            {
              "valueCoding" : {
                "system" : "http://hl7.org/fhir/sid/icf",
                "code" : "qf0",
                "display" : "aucun facilitateur"
              }
            },
            {
              "valueCoding" : {
                "system" : "http://hl7.org/fhir/sid/icf",
                "code" : "qf2",
                "display" : "facilitateur modéré"
              }
            },
            {
              "valueCoding" : {
                "system" : "http://hl7.org/fhir/sid/icf",
                "code" : "qf4",
                "display" : "facilitateur absolu"
              }
            }
          ],
          "item" : [
            {
              "linkId" : "mettre-chaussure-spont",
              "code" : [
                {
                  "system" : "https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis",
                  "code" : "MED-1307",
                  "display" : "fait spontanément"
                }
              ],
              "text" : "fait spontanément",
              "type" : "boolean",
              "repeats" : false
            },
            {
              "linkId" : "mettre-chaussure-tot",
              "code" : [
                {
                  "system" : "https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis",
                  "code" : "MED-1308",
                  "display" : "fait totalement"
                }
              ],
              "text" : "fait totalement",
              "type" : "boolean"
            },
            {
              "linkId" : "mettre-chaussure-correct",
              "code" : [
                {
                  "system" : "https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis",
                  "code" : "MED-1309",
                  "display" : "fait correctement"
                }
              ],
              "text" : "fait correctement",
              "type" : "boolean"
            },
            {
              "linkId" : "mettre-chaussure-habit",
              "code" : [
                {
                  "system" : "https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis",
                  "code" : "MED-1310",
                  "display" : "fait habituellement"
                }
              ],
              "text" : "fait habituellement",
              "type" : "boolean"
            }
          ]
        },
        {
          "linkId" : "manger",
          "code" : [
            {
              "system" : "http://hl7.org/fhir/sid/icf",
              "code" : "d550",
              "display" : "Eating"
            }
          ],
          "text" : "Manger",
          "type" : "choice",
          "required" : false,
          "repeats" : false,
          "answerOption" : [
            {
              "valueCoding" : {
                "system" : "http://hl7.org/fhir/sid/icf",
                "code" : "qf0",
                "display" : "aucun facilitateur"
              }
            },
            {
              "valueCoding" : {
                "system" : "http://hl7.org/fhir/sid/icf",
                "code" : "qf2",
                "display" : "facilitateur modéré"
              }
            },
            {
              "valueCoding" : {
                "system" : "http://hl7.org/fhir/sid/icf",
                "code" : "qf4",
                "display" : "facilitateur absolu"
              }
            }
          ],
          "item" : [
            {
              "linkId" : "manger-spont",
              "code" : [
                {
                  "system" : "https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis",
                  "code" : "MED-1307",
                  "display" : "fait spontanément"
                }
              ],
              "text" : "fait spontanément",
              "type" : "boolean",
              "repeats" : false
            },
            {
              "linkId" : "manger-tot",
              "code" : [
                {
                  "system" : "https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis",
                  "code" : "MED-1308",
                  "display" : "fait totalement"
                }
              ],
              "text" : "fait totalement",
              "type" : "boolean"
            },
            {
              "linkId" : "manger-correct",
              "code" : [
                {
                  "system" : "https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis",
                  "code" : "MED-1309",
                  "display" : "fait correctement"
                }
              ],
              "text" : "fait correctement",
              "type" : "boolean"
            },
            {
              "linkId" : "manger-habit",
              "code" : [
                {
                  "system" : "https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis",
                  "code" : "MED-1310",
                  "display" : "fait habituellement"
                }
              ],
              "text" : "fait habituellement",
              "type" : "boolean"
            }
          ]
        },
        {
          "linkId" : "passage-aliment",
          "code" : [
            {
              "system" : "http://hl7.org/fhir/sid/icf",
              "code" : "b5105",
              "display" : "Swallowing"
            }
          ],
          "text" : "Passage des aliments par l'estomac et les intestins",
          "type" : "choice",
          "required" : false,
          "repeats" : false,
          "answerOption" : [
            {
              "valueCoding" : {
                "system" : "http://hl7.org/fhir/sid/icf",
                "code" : "qf0",
                "display" : "aucun facilitateur"
              }
            },
            {
              "valueCoding" : {
                "system" : "http://hl7.org/fhir/sid/icf",
                "code" : "qf2",
                "display" : "facilitateur modéré"
              }
            },
            {
              "valueCoding" : {
                "system" : "http://hl7.org/fhir/sid/icf",
                "code" : "qf4",
                "display" : "facilitateur absolu"
              }
            }
          ],
          "item" : [
            {
              "linkId" : "passage-aliment-spont",
              "code" : [
                {
                  "system" : "https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis",
                  "code" : "MED-1307",
                  "display" : "fait spontanément"
                }
              ],
              "text" : "fait spontanément",
              "type" : "boolean",
              "repeats" : false
            },
            {
              "linkId" : "passage-aliment-tot",
              "code" : [
                {
                  "system" : "https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis",
                  "code" : "MED-1308",
                  "display" : "fait totalement"
                }
              ],
              "text" : "fait totalement",
              "type" : "boolean"
            },
            {
              "linkId" : "passage-aliment-correct",
              "code" : [
                {
                  "system" : "https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis",
                  "code" : "MED-1309",
                  "display" : "fait correctement"
                }
              ],
              "text" : "fait correctement",
              "type" : "boolean"
            },
            {
              "linkId" : "passage-aliment-habit",
              "code" : [
                {
                  "system" : "https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis",
                  "code" : "MED-1310",
                  "display" : "fait habituellement"
                }
              ],
              "text" : "fait habituellement",
              "type" : "boolean"
            }
          ]
        },
        {
          "linkId" : "assurer-regulation-miction",
          "code" : [
            {
              "system" : "http://hl7.org/fhir/sid/icf",
              "code" : "d5300",
              "display" : "Regulating urination"
            }
          ],
          "text" : "Assurer la régulation de la miction",
          "type" : "choice",
          "required" : false,
          "repeats" : false,
          "answerOption" : [
            {
              "valueCoding" : {
                "system" : "http://hl7.org/fhir/sid/icf",
                "code" : "qf0",
                "display" : "aucun facilitateur"
              }
            },
            {
              "valueCoding" : {
                "system" : "http://hl7.org/fhir/sid/icf",
                "code" : "qf2",
                "display" : "facilitateur modéré"
              }
            },
            {
              "valueCoding" : {
                "system" : "http://hl7.org/fhir/sid/icf",
                "code" : "qf4",
                "display" : "facilitateur absolu"
              }
            }
          ],
          "item" : [
            {
              "linkId" : "miction-spont",
              "code" : [
                {
                  "system" : "https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis",
                  "code" : "MED-1307",
                  "display" : "fait spontanément"
                }
              ],
              "text" : "fait spontanément",
              "type" : "boolean",
              "repeats" : false
            },
            {
              "linkId" : "miction-tot",
              "code" : [
                {
                  "system" : "https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis",
                  "code" : "MED-1308",
                  "display" : "fait totalement"
                }
              ],
              "text" : "fait totalement",
              "type" : "boolean"
            },
            {
              "linkId" : "miction-correct",
              "code" : [
                {
                  "system" : "https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis",
                  "code" : "MED-1309",
                  "display" : "fait correctement"
                }
              ],
              "text" : "fait correctement",
              "type" : "boolean"
            },
            {
              "linkId" : "miction-habit",
              "code" : [
                {
                  "system" : "https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis",
                  "code" : "MED-1310",
                  "display" : "fait habituellement"
                }
              ],
              "text" : "fait habituellement",
              "type" : "boolean"
            }
          ]
        },
        {
          "linkId" : "assurer-regulation-defecation",
          "code" : [
            {
              "system" : "http://hl7.org/fhir/sid/icf",
              "code" : "d5301",
              "display" : "Regulating defecation"
            }
          ],
          "text" : "Assurer la régulation de la défécation",
          "type" : "choice",
          "required" : false,
          "repeats" : false,
          "answerOption" : [
            {
              "valueCoding" : {
                "system" : "http://hl7.org/fhir/sid/icf",
                "code" : "qf0",
                "display" : "aucun facilitateur"
              }
            },
            {
              "valueCoding" : {
                "system" : "http://hl7.org/fhir/sid/icf",
                "code" : "qf2",
                "display" : "facilitateur modéré"
              }
            },
            {
              "valueCoding" : {
                "system" : "http://hl7.org/fhir/sid/icf",
                "code" : "qf4",
                "display" : "facilitateur absolu"
              }
            }
          ],
          "item" : [
            {
              "linkId" : "defecation-spont",
              "code" : [
                {
                  "system" : "https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis",
                  "code" : "MED-1307",
                  "display" : "fait spontanément"
                }
              ],
              "text" : "fait spontanément",
              "type" : "boolean",
              "repeats" : false
            },
            {
              "linkId" : "defecation-tot",
              "code" : [
                {
                  "system" : "https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis",
                  "code" : "MED-1308",
                  "display" : "fait totalement"
                }
              ],
              "text" : "fait totalement",
              "type" : "boolean"
            },
            {
              "linkId" : "defecation-correct",
              "code" : [
                {
                  "system" : "https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis",
                  "code" : "MED-1309",
                  "display" : "fait correctement"
                }
              ],
              "text" : "fait correctement",
              "type" : "boolean"
            },
            {
              "linkId" : "defecation-habit",
              "code" : [
                {
                  "system" : "https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis",
                  "code" : "MED-1310",
                  "display" : "fait habituellement"
                }
              ],
              "text" : "fait habituellement",
              "type" : "boolean"
            }
          ]
        },
        {
          "linkId" : "position-corps",
          "code" : [
            {
              "system" : "http://hl7.org/fhir/sid/icf",
              "code" : "d410",
              "display" : "Changing basic body position"
            }
          ],
          "text" : "Changer la position corporelle de base",
          "type" : "choice",
          "required" : false,
          "repeats" : false,
          "answerOption" : [
            {
              "valueCoding" : {
                "system" : "http://hl7.org/fhir/sid/icf",
                "code" : "qf0",
                "display" : "aucun facilitateur"
              }
            },
            {
              "valueCoding" : {
                "system" : "http://hl7.org/fhir/sid/icf",
                "code" : "qf2",
                "display" : "facilitateur modéré"
              }
            },
            {
              "valueCoding" : {
                "system" : "http://hl7.org/fhir/sid/icf",
                "code" : "qf4",
                "display" : "facilitateur absolu"
              }
            }
          ],
          "item" : [
            {
              "linkId" : "position-corps-spont",
              "code" : [
                {
                  "system" : "https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis",
                  "code" : "MED-1307",
                  "display" : "fait spontanément"
                }
              ],
              "text" : "fait spontanément",
              "type" : "boolean",
              "repeats" : false
            },
            {
              "linkId" : "position-corps-tot",
              "code" : [
                {
                  "system" : "https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis",
                  "code" : "MED-1308",
                  "display" : "fait totalement"
                }
              ],
              "text" : "fait totalement",
              "type" : "boolean"
            },
            {
              "linkId" : "position-corps-correct",
              "code" : [
                {
                  "system" : "https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis",
                  "code" : "MED-1309",
                  "display" : "fait correctement"
                }
              ],
              "text" : "fait correctement",
              "type" : "boolean"
            },
            {
              "linkId" : "position-corps-habit",
              "code" : [
                {
                  "system" : "https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis",
                  "code" : "MED-1310",
                  "display" : "fait habituellement"
                }
              ],
              "text" : "fait habituellement",
              "type" : "boolean"
            }
          ]
        },
        {
          "linkId" : "deplacer-maison",
          "code" : [
            {
              "system" : "http://hl7.org/fhir/sid/icf",
              "code" : "d4600",
              "display" : "Moving around within the home"
            }
          ],
          "text" : "Se déplacer dans la maison",
          "type" : "choice",
          "required" : false,
          "repeats" : false,
          "answerOption" : [
            {
              "valueCoding" : {
                "system" : "http://hl7.org/fhir/sid/icf",
                "code" : "qf0",
                "display" : "aucun facilitateur"
              }
            },
            {
              "valueCoding" : {
                "system" : "http://hl7.org/fhir/sid/icf",
                "code" : "qf2",
                "display" : "facilitateur modéré"
              }
            },
            {
              "valueCoding" : {
                "system" : "http://hl7.org/fhir/sid/icf",
                "code" : "qf4",
                "display" : "facilitateur absolu"
              }
            }
          ],
          "item" : [
            {
              "linkId" : "deplacer-maison-spont",
              "code" : [
                {
                  "system" : "https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis",
                  "code" : "MED-1307",
                  "display" : "fait spontanément"
                }
              ],
              "text" : "fait spontanément",
              "type" : "boolean",
              "repeats" : false
            },
            {
              "linkId" : "deplacer-maison-tot",
              "code" : [
                {
                  "system" : "https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis",
                  "code" : "MED-1308",
                  "display" : "fait totalement"
                }
              ],
              "text" : "fait totalement",
              "type" : "boolean"
            },
            {
              "linkId" : "deplacer-maison-correct",
              "code" : [
                {
                  "system" : "https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis",
                  "code" : "MED-1309",
                  "display" : "fait correctement"
                }
              ],
              "text" : "fait correctement",
              "type" : "boolean"
            },
            {
              "linkId" : "deplacer-maison-habit",
              "code" : [
                {
                  "system" : "https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis",
                  "code" : "MED-1310",
                  "display" : "fait habituellement"
                }
              ],
              "text" : "fait habituellement",
              "type" : "boolean"
            }
          ]
        },
        {
          "linkId" : "deplacer-dehors",
          "code" : [
            {
              "system" : "http://hl7.org/fhir/sid/icf",
              "code" : "d4602",
              "display" : "Moving around outside the home and other buildings"
            }
          ],
          "text" : "Se déplacer en dehors de la maison et d'autres bâtiments",
          "type" : "choice",
          "required" : false,
          "repeats" : false,
          "answerOption" : [
            {
              "valueCoding" : {
                "system" : "http://hl7.org/fhir/sid/icf",
                "code" : "qf0",
                "display" : "aucun facilitateur"
              }
            },
            {
              "valueCoding" : {
                "system" : "http://hl7.org/fhir/sid/icf",
                "code" : "qf2",
                "display" : "facilitateur modéré"
              }
            },
            {
              "valueCoding" : {
                "system" : "http://hl7.org/fhir/sid/icf",
                "code" : "qf4",
                "display" : "facilitateur absolu"
              }
            }
          ],
          "item" : [
            {
              "linkId" : "deplacer-dehors-spont",
              "code" : [
                {
                  "system" : "https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis",
                  "code" : "MED-1307",
                  "display" : "fait spontanément"
                }
              ],
              "text" : "fait spontanément",
              "type" : "boolean",
              "repeats" : false
            },
            {
              "linkId" : "deplacer-dehors-tot",
              "code" : [
                {
                  "system" : "https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis",
                  "code" : "MED-1308",
                  "display" : "fait totalement"
                }
              ],
              "text" : "fait totalement",
              "type" : "boolean"
            },
            {
              "linkId" : "deplacer-dehors-correct",
              "code" : [
                {
                  "system" : "https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis",
                  "code" : "MED-1309",
                  "display" : "fait correctement"
                }
              ],
              "text" : "fait correctement",
              "type" : "boolean"
            },
            {
              "linkId" : "deplacer-dehors-habit",
              "code" : [
                {
                  "system" : "https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis",
                  "code" : "MED-1310",
                  "display" : "fait habituellement"
                }
              ],
              "text" : "fait habituellement",
              "type" : "boolean"
            }
          ]
        },
        {
          "linkId" : "appareil-communication",
          "code" : [
            {
              "system" : "http://hl7.org/fhir/sid/icf",
              "code" : "d3608",
              "display" : "Using communication devices and techniques, other specified"
            }
          ],
          "text" : "Utiliser d'autres appareils et techniques de communication précisés",
          "type" : "choice",
          "required" : false,
          "repeats" : false,
          "answerOption" : [
            {
              "valueCoding" : {
                "system" : "http://hl7.org/fhir/sid/icf",
                "code" : "qf0",
                "display" : "aucun facilitateur"
              }
            },
            {
              "valueCoding" : {
                "system" : "http://hl7.org/fhir/sid/icf",
                "code" : "qf2",
                "display" : "facilitateur modéré"
              }
            },
            {
              "valueCoding" : {
                "system" : "http://hl7.org/fhir/sid/icf",
                "code" : "qf4",
                "display" : "facilitateur absolu"
              }
            }
          ],
          "item" : [
            {
              "linkId" : "appareil-spont",
              "code" : [
                {
                  "system" : "https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis",
                  "code" : "MED-1307",
                  "display" : "fait spontanément"
                }
              ],
              "text" : "fait spontanément",
              "type" : "boolean",
              "repeats" : false
            },
            {
              "linkId" : "appareil-tot",
              "code" : [
                {
                  "system" : "https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis",
                  "code" : "MED-1308",
                  "display" : "fait totalement"
                }
              ],
              "text" : "fait totalement",
              "type" : "boolean"
            },
            {
              "linkId" : "appareil-correct",
              "code" : [
                {
                  "system" : "https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis",
                  "code" : "MED-1309",
                  "display" : "fait correctement"
                }
              ],
              "text" : "fait correctement",
              "type" : "boolean"
            },
            {
              "linkId" : "appareil-habit",
              "code" : [
                {
                  "system" : "https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis",
                  "code" : "MED-1310",
                  "display" : "fait habituellement"
                }
              ],
              "text" : "fait habituellement",
              "type" : "boolean"
            }
          ]
        }
      ]
    }
  ]
}

```
