accessing
isDangling
	self package ifNil: [ ^ true ].
	self referenceName ifNil: [ ^ true ].
	self pclass ifNil: [ self halt. ].
	^ false