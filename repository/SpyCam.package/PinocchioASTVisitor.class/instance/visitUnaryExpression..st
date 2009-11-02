visitor
visitUnaryExpression: anASTUnaryExpression
	^ PinocchioSend new
		message: (PinocchioSymbol named: anASTUnaryExpression selector asString);
		receiver: (anASTUnaryExpression receiver accept: self);
		arguments: (PinocchioArray new values: Array new)
