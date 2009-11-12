exporting
ensureClassReference: name
	self haltIf: [name isKindOf: PinocchioSymbol ].
	^ self at: name ifAbsentPut: [ PinocchioClassReference named: name in: self ].