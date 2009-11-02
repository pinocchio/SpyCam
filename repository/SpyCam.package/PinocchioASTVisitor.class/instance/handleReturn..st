visitor
handleReturn: aPinocchioBlock
	aPinocchioBlock body last isReturnExpression 
		ifTrue: [ aPinocchioBlock body last: aPinocchioBlock body last argument]
		ifFalse: [ aPinocchioBlock body add: PinocchioSelf new].
	aPinocchioBlock hasReturnExpression
		ifTrue: [ ^ self wrapReturningBlock: aPinocchioBlock ].
	^ aPinocchioBlock.
	