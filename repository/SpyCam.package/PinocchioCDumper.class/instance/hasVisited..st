accessing
hasVisited: aNode
	aNode ifNil: [self error: 'Should not get nil to hasVisited!'].
	"TODO no clue why contains doesn't work here :/'"
	(visitedNodes identityIncludes: aNode) ifTrue: [ ^ true].
	visitedNodes add: aNode.
	^ false