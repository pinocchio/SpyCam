testing
whileFalse: aBlock
	self value ifFalse: [
		aBlock value.
		self whileTrue: aBlock
	]