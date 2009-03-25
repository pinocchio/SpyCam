as yet unclassified
match: input in: scope
	| result |
	self debug: input.
	result := input memoizeMatch: self in: scope.
	self debugEnd: input.
	^ result