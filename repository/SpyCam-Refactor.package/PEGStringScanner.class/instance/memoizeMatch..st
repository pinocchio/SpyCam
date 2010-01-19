as yet unclassified
memoizeMatch: parser 
	| result doCache |
	doCache := true.
	doCache ifTrue: [
		result := self bucket at: parser ifAbsentPut: [ self doMatch: parser ].
		position := result x.
		^ result y.
	]
	ifFalse: [ ^ (self doMatch: parser) y]