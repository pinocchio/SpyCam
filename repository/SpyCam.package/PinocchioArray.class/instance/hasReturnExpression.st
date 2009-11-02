accessing
hasReturnExpression
	self values do: [ :el| el hasReturnExpression ifTrue: [ ^ true ]].
	^ false