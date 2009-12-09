convenience
checkClassReference: classReference
	self assert: classReference pinocchioClass ~= nil.
	self assert: classReference package ~= nil.
	self assert: classReference referenceName ~= nil.