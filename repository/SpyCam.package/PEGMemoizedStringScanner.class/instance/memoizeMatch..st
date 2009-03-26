matching
memoizeMatch: parser
	| result |
	result := self bucket at: parser ifAbsentPut: [ self doMatch: parser ].
	position := result x.
	^ result y