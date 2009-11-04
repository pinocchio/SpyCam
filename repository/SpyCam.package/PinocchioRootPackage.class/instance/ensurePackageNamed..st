exporting
ensurePackageNamed: name
	^ self at: name ifAbsentPut: [ PinocchioPackage named: name asSymbol in: self ].