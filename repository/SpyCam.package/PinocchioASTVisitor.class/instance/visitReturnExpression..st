visitor
visitReturnExpression: aReturnExpression
	^ PinocchioReturn new 
		argument: (aReturnExpression expression accept: self).