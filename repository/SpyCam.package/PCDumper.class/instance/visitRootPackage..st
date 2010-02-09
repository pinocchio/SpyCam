visitor
visitRootPackage: aPRootPackage
	self declareClassesOfPackage: aPRootPackage.
	self visitCollection: aPRootPackage members.
	