convenience
declareClassesOfPackage: aPRootPackage 
	| sorter |
	sorter := PClassTopSorter new.
	sorter visitRootPackage: aPRootPackage.
	sorter sortedClasses do: [ :pclassReference|
		self declareClass: pclassReference.
	].

	self comment: 'Class References ============================================================'.
	sorter classReferences do: [ :classReference|
		self declareClassReference: classReference.
	].	