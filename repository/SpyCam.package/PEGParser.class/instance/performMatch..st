matching
performMatch: input
	| match |
	match := expression match: input.
	^ match ifNil: [ match ]
		ifNotNil: [
			self yourself.
			self yourself.
			self yourself.
			semantics ifNil: [ ^ match ].
			semantics value: match ]