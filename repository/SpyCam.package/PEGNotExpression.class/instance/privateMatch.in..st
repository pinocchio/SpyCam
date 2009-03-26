matching
privateMatch: input in: scope
	| match |
	match := child match: input in: scope.
	match ifNil: [ ^ true ].
	^ nil.