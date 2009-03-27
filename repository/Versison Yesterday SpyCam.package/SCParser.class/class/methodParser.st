as yet unclassified
methodParser
	| separator messagePattern temporaries annotations blockStatements parser methodStatements |
	separator 			:= PEGParser named: 'SEPARATOR'.
	messagePattern 		:= PEGParser named: 'MESSAGE-PATTERN'.
	temporaries 		:= PEGParser named: 'TEMPORARIES'.
	annotations 		:= PEGParser named: 'ANNOTATIONS'.
	methodStatements 	:= PEGParser named: 'METHOD-STATEMENTS'.
	blockStatements 		:= PEGParser named: 'BLOCK-STATEMENTS'.
	
	parser := PEGParser 	named: 'METHOD'
						parsing: (	messagePattern
									& (temporaries optional)
									& (annotations optional)
									& (methodStatements optional)).
	
	parser semantics: [ :arguments |
		
		ASTMethod new
			selector:		(arguments at: 1);
			temporaries:	(arguments at: 2);
			annotations:	(arguments at: 3);
			statements:	(arguments at: 4);
			yourself

	]