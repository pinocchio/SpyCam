matching
privateOmitMatch: input
	|match |
	children do: [ :child |
		match := child omitMatch: input.
		match ifNotNil: [ ^ match].
	].
	^ nil