visiting
visitClass: aPClass
	(sortedClasses includes: aPClass) ifTrue: [ ^ self].
	aPClass superclass accept: self.
	sortedClasses addLast: aPClass.