visitor
visitUnaryExpression: anASTUnaryExpression
	^ (self createSendTo: anASTUnaryExpression receiver )
		message: (PinocchioSymbol named: anASTUnaryExpression selector asString);
		arguments: (PinocchioArray new: 0)
