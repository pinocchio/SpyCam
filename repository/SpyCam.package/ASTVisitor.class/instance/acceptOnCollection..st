convenience
acceptOnCollection: aCollection
	^ aCollection collect: [:each | each accept: self]