testing
whileTrue: aBlock
	self value ifTrue: [
		aBlock value.
		self whileTrue: aBlock
	]