as yet unclassified
doMatch: parser
	| result |
	"First match then store position"
	result := parser performMatch: self.
	^ position @ result