visitor
visitMessageExpression: aMessageExpression
	^ PinocchioSend new
		message: (PinocchioSymbol named: aMessageExpression selector);
		arguments: (self acceptOnCollection: aMessageExpression arguments);
		receiver: (aMessageExpression receiver accept: self).