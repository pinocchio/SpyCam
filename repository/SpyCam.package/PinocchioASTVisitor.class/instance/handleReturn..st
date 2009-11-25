convenience
handleReturn: aPinocchioBlock
	aPinocchioBlock body last isReturnExpression
		"If the last statement is a return, just put the statement there, the last thing
		is kept on the stack"
		ifTrue: [ aPinocchioBlock body last: aPinocchioBlock body last argument]
		"Otherwise make sure we put a return self there"
		ifFalse: [ aPinocchioBlock body: (aPinocchioBlock body add: PinocchioSelf new)].
	aPinocchioBlock hasReturnExpression
		ifTrue: [ ^ self wrapReturningBlock: aPinocchioBlock ].
	^ aPinocchioBlock.
	