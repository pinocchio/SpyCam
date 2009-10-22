as yet unclassified
hasReturnExpression
	self statements do: 
		[ :el | 
		el isReturnExpression 
			or: [ el hasReturnExpression ]
			ifTrue: [ ^ true ] ].
	^ false