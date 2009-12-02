instance creation
named: referenceName in: package
	self assert: package ~= nil.
	^ (self named: referenceName)
		package: package 