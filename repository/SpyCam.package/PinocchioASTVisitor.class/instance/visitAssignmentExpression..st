visitor
visitAssignmentExpression: anAssignmentExpression 
	^PinocchioAssign new
		variable: (anAssignmentExpression variable accept: self);
		expression: (anAssignmentExpression expression accept: self)