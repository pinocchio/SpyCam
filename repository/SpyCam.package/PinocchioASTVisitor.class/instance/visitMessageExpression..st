visitor
visitMessageExpression: aMessageExpression
	^ PinocchioSend new
		message: (PinocchioSymbol named: aMessageExpression selector asString);
		arguments: (self acceptOnCollection: aMessageExpression arguments) asPArray;
		receiver: (aMessageExpression receiver accept: self).