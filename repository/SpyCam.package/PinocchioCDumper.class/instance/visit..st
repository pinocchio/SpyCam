visitor
visit: aPinocchioObject
	(self hasVisited: aPinocchioObject) ifTrue: [ ^ aPinocchioObject ].
	^ aPinocchioObject accept: self.