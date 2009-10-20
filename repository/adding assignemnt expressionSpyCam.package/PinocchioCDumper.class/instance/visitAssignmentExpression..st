visitor
visitAssignmentExpression: anAssignmentExpression
	
	anAssignmentExpression variable accept: self.
	anAssignmentExpression expression accept: self.
	
	self putNewInstance: anAssignmentExpression
		with: ('new_AST_Assign(', anAssignmentExpression variable uid, ', ', 
								anAssignmentExpression expression uid, ')').
	