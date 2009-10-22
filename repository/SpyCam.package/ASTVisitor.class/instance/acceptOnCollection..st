convenience
acceptOnCollection: aCollection
	aCollection isNil ifTrue: [^ #()].
	^ aCollection collect: [:each | each accept: self]