visitor
visitUnaryExpression: anASTUnaryExpression
	^ PinocchioSend new
		message: (PinocchioSymbol named: anASTUnaryExpression selector asString);
		receiver: (self visit: anASTUnaryExpression receiver);
		arguments: (PinocchioArray new values: Array new)
