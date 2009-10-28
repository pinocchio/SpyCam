visitor
visitUnaryExpression: anASTUnaryExpression
	^ PinocchioSend new
		message: (PinocchioSymbol named: anASTUnaryExpression selector);
		receiver: (anASTUnaryExpression receiver accept: self).
