matching
privateMatch: input
	| result match |
	result := OrderedCollection new.
	children do: [:child | 
		skipWhitespace ifTrue: [input skipWhitespace].
		match := child match: input.
		match ifNil: [^ match].
		child omit 
			ifFalse: [result add: match]].
	result size = 1 
		ifTrue: [^ result at: 1].
	^ result