exporting
ensureClassReference: name
	^ self at: name ifAbsentPut: [ PinocchioClassReference named: name in: self ].