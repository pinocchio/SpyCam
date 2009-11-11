visitor
visitMessageExpression: aMessageExpression
	^ (self createSendTo: aMessageExpression receiver)
			message: (PinocchioSymbol named: aMessageExpression selector asString);
			arguments: (self acceptOnCollection: aMessageExpression arguments) asPArray
