testing
testHasReturnExpression 
	parser := scparser method.
	self assert: (self ast: ('method', String cr, '^ 1')) hasReturnExpression.
	self deny: (self ast: ('method', String cr, '1')) hasReturnExpression.	
		
	self assert: (self ast: 
		('method', String cr, 
			'true ifFalse: [^ true]')) hasReturnExpression.
	self deny: (self ast: 
		('method', String cr, 
			'true ifFalse: [ 2 ]')) hasReturnExpression.
			
	self assert: (self ast: 
		('method', String cr, 
			'true ifFalse: [^ true] ifTrue: [ ^ 2]')) hasReturnExpression.
			
	self assert: (self ast: 
		('method', String cr, 
			'self isNil ifFalse: [^ true]')) hasReturnExpression.
			
	self assert: (self ast: 
		('method', String cr, 
			'[true] whileTrue: [^ true] doBo: 1')) hasReturnExpression.