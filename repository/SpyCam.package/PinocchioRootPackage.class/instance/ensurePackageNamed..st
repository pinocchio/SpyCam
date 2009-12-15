exporting
ensurePackageNamed: aPinocchioSymbol
	aPinocchioSymbol should beKindOf: PinocchioSymbol.
	^ self at: aPinocchioSymbol ifAbsentPut: [ PinocchioPackage named: aPinocchioSymbol in: self ]