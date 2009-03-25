as yet unclassified
memoizeMatch: parser in: scope
	| result |
	result := self bucket at: parser ifAbsentPut: [ self doMatch: parser in: scope. ].
	position := result x.
	^ result y