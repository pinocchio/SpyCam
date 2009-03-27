as yet unclassified
methodParser
	| messagePattern annotations blockStatements parser methodStatements |
	messagePattern 		:= PEGParser named: 'MESSAGE-PATTERN'.
	annotations 		:= PEGParser named: 'ANNOTATIONS'.
	methodStatements 	:= PEGParser named: 'METHOD-STATEMENTS'.
	blockStatements 		:= PEGParser named: 'BLOCK-STATEMENTS'.
	
	parser := PEGParser 	named: 'METHOD'
						parsing: messagePattern
									& (self temporaries optional)
									<& (annotations optional)
									<& (self statements optional)
									<& self separator. " Allow comment/whitespace at the end of a method. "
	
	parser semantics: [ :arguments |
		
		ASTMethod new
			selector:		(arguments at: 1);
			temporaries:	(arguments at: 2);
			annotations:	(arguments at: 3);
			statements:	(arguments at: 4);
			yourself

	]