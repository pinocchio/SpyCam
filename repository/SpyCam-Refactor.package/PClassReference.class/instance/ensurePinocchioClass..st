convenience
ensurePinocchioClass: aPinocchioClass 
	pinocchioClass 
		ifNil: [ pinocchioClass := aPinocchioClass ]
		ifNotNil: [ pinocchioClass = aPinocchioClass ifFalse: [ self error ] ].
	^ pinocchioClass