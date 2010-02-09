exporting
export: aPRootPackage 
	| sorter |
	(aPRootPackage isKindOf: PRootPackage) ifFalse: [
		self error: 'Can Only Export Root Packages'.
	].
	
	self root: aPRootPackage.
	self clear.
	
	sorter := PClassTopSorter new.
	sorter visitRootPackage: self root.
	self sortedClasses: sorter sortedClasses.
	self classReferences: sorter classReferences.
	
	self exportClasses.
	self visit: aPRootPackage.
	
	self createCFile.
	self createHFile.
