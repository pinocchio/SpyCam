accessing
isDangling
	self package ifNil: [ ^ true ].
	self referenceName ifNil: [ ^ true ].
	^ false