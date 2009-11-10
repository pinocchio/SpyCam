accessing
hasReturnExpression
	self do: [ :el| el hasReturnExpression ifTrue: [ ^ true ]].
	^ false