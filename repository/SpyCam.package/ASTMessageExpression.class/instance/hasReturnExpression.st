accessing
hasReturnExpression
	self arguments do: [ :el | 
		el isReturnExpression 
			or: [ el hasReturnExpression ]
			ifTrue: [ ^ true ] ].
	^ false