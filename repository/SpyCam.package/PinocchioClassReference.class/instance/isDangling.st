accessing
isDangling
	self cls ifNil: [ ^ true ].
	self package ifNil: [ ^ true ].
	self referenceName ifNil: [ ^ true ].
	^ false