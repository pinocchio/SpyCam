exporting
generateMethodCallFor: anPinocchioASTMethod of: aCompiledMethod
	| send arguments |
	arguments := ((self testArgumentsFor: anPinocchioASTMethod of: aCompiledMethod)
						collect: [:o | o asPObject asPConstant ]) asPArray.
	send := PSend new
				receiver: testCaseInstance;
				message: anPinocchioASTMethod selector asPSymbol;
				arguments: arguments.
	cdumper stream: outStream.
	cdumper visit: send.
	
	outStream nextPutAll: 'Object result = (Object)Eval((Object)';
		nextPutAll: send uid asString;
		nextPutAll: ');'; cr.
	self assertEmptyStack.