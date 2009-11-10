instance creation
named: referenceName in: package
	self assert: referenceName ~= nil.
	self assert: package ~= nil.
	^ super new referenceName: referenceName; package: package 