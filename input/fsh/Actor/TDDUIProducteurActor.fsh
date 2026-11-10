
Instance: TDDUIProducteurActor
InstanceOf: ActorDefinition
Title: "TDDUI Producteur"
Usage: #definition
Description: """
Le rôle de producteur incarné par un système correspond à l’acteur à l’origine de l’export des données d’un logiciel DUI.
"""
* purpose = """
**Exemples**
- Logiciel DUI d’un EHPAD (cas d'usage RAMA)
- Logiciel DUI d’un SSIAD (cas d’usage SSIAD)
- Logiciel DUI d’un ESSMS (cas d’usage SERAFIN)
"""
* documentation = """
**Exemples**
- Logiciel DUI d’un EHPAD (cas d'usage RAMA)
- Logiciel DUI d’un SSIAD (cas d’usage SSIAD)
- Logiciel DUI d’un ESSMS (cas d’usage SERAFIN)
"""
* name = "TDDUIProducteurActor"
* title = "TDDUI Producteur"
* status = #active
* experimental = false
* type = #system
* capabilities = Canonical(TDDUIProducteur)
