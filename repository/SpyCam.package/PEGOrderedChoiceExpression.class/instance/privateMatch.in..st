matching
privateMatch: input in: scope
	children do: [ :child |
		(child match: input in: scope)
			ifNotNil: [ :match | ^ match ] ].
	^ nil