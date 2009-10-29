accessing
hasVisited: aNode
	"TODO no clue why contains doesn't work here :/'"
	(visitedNodes identityIncludes: aNode) ifTrue: [ ^ true].
	visitedNodes add: aNode.
	^ false