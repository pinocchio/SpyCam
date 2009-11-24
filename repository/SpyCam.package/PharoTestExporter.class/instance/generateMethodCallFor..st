exporting
generateMethodCallFor: anPinocchioASTMethod
	| send arguments |
	send := PinocchioSend new
				receiver: testCaseClass;
				message: anPinocchioASTMethod selector asPSymbol.
	cdumper stream: outStream.
	cdumper visit: send.
	
	outStream nextPutAll: 'Object result = (Object)Eval((Object)';
		nextPutAll: send uid asString;
		nextPutAll: ');'; cr;
		nextPutAll: 'ASSERT_EMPTY_STACK'; cr.