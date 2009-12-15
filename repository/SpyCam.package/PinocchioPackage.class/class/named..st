instance creation
named: aSymbol
	aSymbol should beKindOf: PinocchioSymbol.
	^ self new packageName: aSymbol