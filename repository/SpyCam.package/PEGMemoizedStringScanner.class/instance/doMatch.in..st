as yet unclassified
doMatch: parser in: scope
	| result |
	"First match then store position"
	result := parser performMatch: self in: scope.
	^ position @ result