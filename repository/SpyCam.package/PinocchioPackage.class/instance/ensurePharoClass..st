exporting
ensurePharoClass: pharoClass
	^ self at: pharoClass name ifAbsentPut: [ PharoClass wrap: pharoClass in: self ].