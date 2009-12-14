visitor
visitSuper: aPinocchioSuper 
	self visit: aPinocchioSuper message.
	self visitCollection: aPinocchioSuper arguments.
	self put: aPinocchioSuper 
		with: ('new_AST_Super(', aPinocchioSuper message uid , ', ',
								(self multiArgFor: aPinocchioSuper arguments) ,')').