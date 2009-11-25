exporting
generateMethodCallFor: anPinocchioASTMethod
	| send arguments |
	send := PinocchioSend new
				receiver: testCaseInstance;
				message: anPinocchioASTMethod selector asPSymbol.
	cdumper stream: outStream.
	cdumper visit: send.
	
	outStream nextPutAll: 'Object result = (Object)Eval((Object)';
		nextPutAll: send uid asString;
		nextPutAll: ');'; cr.
	self assertEmptyStack.