instance creation
named: referenceName
	self assert: referenceName ~= nil.
	^ super new referenceName: referenceName.