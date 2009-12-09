instance creation
named: aSymbol
	self assert: (aSymbol isKindOf: PinocchioSymbol).
	^ self new packageName: aSymbol.