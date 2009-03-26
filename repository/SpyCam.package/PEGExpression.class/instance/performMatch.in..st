matching
performMatch: input in: scope 
	| position match |
	position := input position.
	match := self privateMatch: input in: scope.
	match
		ifNil: [input position: position].
	^ match