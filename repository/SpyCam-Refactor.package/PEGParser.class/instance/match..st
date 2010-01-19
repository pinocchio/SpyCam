matching
match: input
 	"| result |
	self debug: input.
	result :="
	| result |
	result := input memoizeMatch: self.
	"self debugEnd: input."
	^ result