matching
match: input
	| result |
	self debug: input.
	result := id ifNil: [ self performMatch: input ]
				ifNotNil: [ input memoizeMatch: self ].
	self debugEnd: input.
	^ result