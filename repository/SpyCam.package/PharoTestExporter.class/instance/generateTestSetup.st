exporting
generateTestSetup
	| send |
	outStream cr; cr; nextPutAll: 'void ', self name, '_setUp() {'; cr.
	send := PSend new
				receiver: testCaseInstance;
				message: #setUp asPSymbol;
				arguments: Array new.
	cdumper stream: outStream.
	cdumper visit: send.
	
	outStream nextPutAll: 'Eval((Object)';
		nextPutAll: send uid asString;
		nextPutAll: ');'; cr;
		nextPutAll: '}'.