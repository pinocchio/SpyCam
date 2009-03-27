matching
match: input
	| result |
	self debug: input.
	result := input memoizeMatch: self.
	self debugEnd: input.
	^ result