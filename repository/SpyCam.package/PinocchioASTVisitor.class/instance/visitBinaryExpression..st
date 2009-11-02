visitor
visitBinaryExpression: aBinaryExpression
	^ PinocchioSend new
			receiver: (self visit: aBinaryExpression receiver);
			message: (PinocchioSymbol named: aBinaryExpression selector asString);
			arguments: (self visit: aBinaryExpression argument) asPArray.