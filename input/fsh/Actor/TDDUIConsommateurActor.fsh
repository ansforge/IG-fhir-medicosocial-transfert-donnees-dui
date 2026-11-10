
Instance: TDDUIConsommateurActor
InstanceOf: ActorDefinition
Title: "TDDUI Consommateur"
Usage: #definition
Description: """
Le rôle de consommateur incarné par un système se caractérise par réceptionner puis importer l’export des données DUI dans son système (SI-tiers).
"""
* purpose = """
**Exemples**
- SIDOBA (cas d'usage SSIAD et RAMA)
- SI tiers destinataire d’un transfert pour le cas d’usage SERAFIN
"""
* documentation = """
**Exemples**
- SIDOBA (cas d'usage SSIAD et RAMA)
- SI tiers destinataire d’un transfert pour le cas d’usage SERAFIN
"""
* name = "TDDUIConsommateurActor"
* title = "TDDUI Consommateur"
* status = #active
* experimental = false
* type = #system
* capabilities = Canonical(TDDUIConsommateur)
