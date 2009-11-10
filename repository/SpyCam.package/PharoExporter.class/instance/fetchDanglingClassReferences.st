as yet unclassified
fetchDanglingClassReferences
	self fetchDanglingClassReferencesIn: root members.
	self fetchDanglingClassReferencesIn: pinocchioVisitor rootScope decls.