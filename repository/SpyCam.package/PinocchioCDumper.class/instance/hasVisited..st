accessing
hasVisited: aNode
	aNode ifNil: [self error: 'Should not get nil to hasVisited!'].
	(visitedNodes includes: aNode) ifTrue: [ ^ true].
	visitedNodes add: aNode.
	^ false