evaluating
valueWithPossibleArgs: anArray 
	| numArgs |
	numArgs := self numArgs.
	numArgs = 0 ifTrue: [ ^ self value].
	
	(numArgs = anArray size)
		ifTrue: [ ^ self valueWithArguments: anArray].
		
	(numArgs > anArray 	size) 
	ifTrue: [^ self valueWithArguments: (anArray, (Array new: numArgs - anArray size))].
	
	^ self valueWithArguments: (anArray copyFrom: 1 to: numArgs)