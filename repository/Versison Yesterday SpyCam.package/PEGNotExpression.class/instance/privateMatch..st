matching
privateMatch: input
	| match |
	match := child match: input.
	match ifNil: [
		^ input next ifNotNil: [ :char | char asString ]. " Not always eats 1 char. We fail if next is end of string (nil) "
		].
	^ nil.