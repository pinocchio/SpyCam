convenience
testArgumentsFor: aCompileMethod 
	| pragma |
	pragma := (aCompileMethod literals select: [ :each|
					each isKindOf: AdditionalMethodState
				]) first pragmas first.
	^ pragma arguments