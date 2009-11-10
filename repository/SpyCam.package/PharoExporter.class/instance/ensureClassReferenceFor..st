exporting
ensureClassReferenceFor: aPinocchioClass 
	| classReference |
	classReference := aPinocchioClass package ensureClassReference: aPinocchioClass name.
	classReference ensure: aPinocchioClass.
	self assert: classReference cls ~= nil.
	self assert: classReference package ~= nil.
	self assert: classReference referenceName ~= nil.
	