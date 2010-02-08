visitor
visitRootPackage: aPinocchioRootPackage
	| sorter |
	exportingClasses := true.
	sorter := PClassTopSorter new.
	sorter visitRootPackage: aPinocchioRootPackage.
	sorter sortedClasses do: [ :cls|
		self declareClass: cls.
	].
	exportingClasses := false.
	self visitCollection: aPinocchioRootPackage members.
	