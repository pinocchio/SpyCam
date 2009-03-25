as yet unclassified
performMatch: input in: scope
	| match |
	match := expression match: input in: (self extendScope: scope).
	^ match
		ifNil: [ match ]
		ifNotNil: [
			semantics ifNil: [ ^ match ].
			semantics value: match value: scope ]