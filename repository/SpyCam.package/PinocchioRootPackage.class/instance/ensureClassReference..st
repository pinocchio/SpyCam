exporting
ensureClassReference: aNameSymbol
	self haltIf: [(aNameSymbol isKindOf: PinocchioSymbol) not ].
	^ self at: aNameSymbol ifAbsentPut: [ PinocchioClassReference named: aNameSymbol in: self ].