visitor
visitBinaryExpression: aBinaryExpression
	^ (self createSendTo: aBinaryExpression receiver)
			message: (PinocchioSymbol named: aBinaryExpression selector asString);
			arguments: (self visit: aBinaryExpression argument) asPArray.