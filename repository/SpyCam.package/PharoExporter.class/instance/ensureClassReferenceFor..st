exporting
ensureClassReferenceFor: aPinocchioClass 
	| classReference |
	aPinocchioClass package at: aPinocchioClass name ifPresent: [ :el | 
		el ensurePinocchioClass: aPinocchioClass.
		^ el 
	].
	classReference := aPinocchioClass package ensureClassReference: aPinocchioClass name.
	classReference referenceName: aPinocchioClass name asPSymbol.
	classReference ensurePinocchioClass: aPinocchioClass.
	pinocchioVisitor rootScope decls 
		at: classReference referenceName
		ifPresent: [ :el | el becomeForward: classReference ].
	self assert: classReference pinocchioClass ~= nil.
	self assert: classReference package ~= nil.
	self assert: classReference referenceName ~= nil.
	^ classReference