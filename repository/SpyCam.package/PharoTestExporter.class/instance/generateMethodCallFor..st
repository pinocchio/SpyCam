exporting
generateMethodCallFor: anPinocchioASTMethod
	| send |
	send := PinocchioSend new
				receiver: testCaseClass;
				message: anPinocchioASTMethod selector asPSymbol.
	cdumper stream: outStream.
	cdumper visit: send.
	
	outStream nextPutAll: ''