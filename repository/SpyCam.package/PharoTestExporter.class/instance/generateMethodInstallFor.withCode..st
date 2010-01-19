exporting
generateMethodInstallFor: method withCode: code
	| closure |
	closure := PMethodClosure new
			code: code;
			pinocchioClass: testCaseClass;
			selector: method selector asPSymbol.
	cdumper stream: outStream.
	cdumper visit: closure.
	outStream cr.
		