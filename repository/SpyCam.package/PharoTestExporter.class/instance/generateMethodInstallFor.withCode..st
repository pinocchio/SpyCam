exporting
generateMethodInstallFor: method withCode: code
	| closure |
	outStream cr.
	closure := PinocchioMethodClosure new
			code: code;
			pinocchioClass: testCaseClass;
			selector: method selector asPSymbol.
	cdumper stream: outStream.
	cdumper visit: closure.
	outStream nextPutAll: 'store_method(Test_Class, SMB_runTestCase';
		nextPutAll: closure uid asString;
		nextPutAll: ');'; cr; cr.
		