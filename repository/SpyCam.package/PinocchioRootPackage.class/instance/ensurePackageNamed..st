exporting
ensurePackageNamed: aPinocchioSymbol
	self assert: (aPinocchioSymbol isKindOf: PinocchioSymbol ).
	^ self at: aPinocchioSymbol ifAbsentPut: [ 
		PinocchioPackage named: aPinocchioSymbol in: self 
	].