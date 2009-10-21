visitor
visitBinaryExpression: anASTBinaryExpression

	self visit: anASTBinaryExpression argument.
	self visit: anASTBinaryExpression receiver.
	self createSymbol: anASTBinaryExpression selector.
	
	self put: anASTBinaryExpression
		with: ('new_AST_Send(', anASTBinaryExpression receiver uid, ', ',
								self symbolForSelector: anASTBinaryExpression selector,
								'new_Array_With(1, ',anASTBinaryExpression argument uid, '))').