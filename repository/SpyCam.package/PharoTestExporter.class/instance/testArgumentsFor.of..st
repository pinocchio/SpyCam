convenience
testArgumentsFor: anASTMethod of: aCompileMethod 
	| pragma arguments |
	anASTMethod annotations isEmpty  ifTrue: [
		arguments := Array new.
	] ifFalse: [
		arguments := 
			(aCompileMethod literals select: [ :each|
					each isKindOf: AdditionalMethodState
			]) first pragmas first arguments.
	].
	^ arguments