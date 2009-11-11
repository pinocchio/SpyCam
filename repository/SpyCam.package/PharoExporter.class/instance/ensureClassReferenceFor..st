exporting
ensureClassReferenceFor: aPinocchioClass 
	| classReference |
	classReference := aPinocchioClass package ensureClassReference: aPinocchioClass name.
	classReference ensure: aPinocchioClass.
	pinocchioVisitor rootScope decls at: classReference referenceName ifPresent: [ :el|
		el becomeForward: classReference.
	].
	
	self assert: classReference cls ~= nil.
	self assert: classReference package ~= nil.
	self assert: classReference referenceName ~= nil.
	