as yet unclassified
pushClassReference: aClassReference as: aName
	self haltIf: [ aName isKindOf: PinocchioSymbol ].
	pinocchioVisitor rootScope decls at: aName put: aClassReference.