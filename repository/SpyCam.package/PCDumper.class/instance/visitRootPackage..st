visitor
visitRootPackage: aPinocchioRootPackage
	| sorter |
	sorter := PClassTopSorter new.
	sorter visitRootPackage: aPinocchioRootPackage.
	sorter sortedClasses do: [ :cls|
		self declareClass: cls.
	].
	self visitCollection: aPinocchioRootPackage members.
	