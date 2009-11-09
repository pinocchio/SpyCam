exporting
ensureClassReferenceFor: aPinocchioClass 
	| classReference |
	classReference := aPinocchioClass package ensureClassReference: aPinocchioClass name.
	classReference ensure: aPinocchioClass.
	