as yet unclassified
privateMatch: input in: scope on: result 
	| match |
	[skipWhitespace
		ifTrue: [input skipWhitespace: scope].
		match := child match: input in: scope.
		match isNil]
			whileFalse: [result add: match].
	^ result