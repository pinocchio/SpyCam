matching
performMatch: input
	| position match |
	position := input position.
	match := self privateMatch: input.
	match
		ifNil: [input position: position].
	^ match