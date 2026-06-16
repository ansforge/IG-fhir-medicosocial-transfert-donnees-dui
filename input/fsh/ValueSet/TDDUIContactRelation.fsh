ValueSet: TDDUIContactRelation
Id: tddui-contact-relation
Title: "TDDUI Contact Relation"
Description: "ValueSet définissant les relations."
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^experimental = false

* include codes from valueset JDV-J11-RelationPatient-CISIS
* include codes from valueset JDV-J14-QualiteRepresentantLegal-CISIS
* exclude $TRE-R217-ProtectionJuridique#TUTEUR "Tuteur"
* exclude $TRE-R217-ProtectionJuridique#CURATEUR "Curateur"
* exclude $TRE-R217-ProtectionJuridique#MSVG "Mandataire de sauvegarde"