exporting
generateMethodInstallFor: method withCode: code
	cdumper stream: outStream.
	cdumper visit: (
		PinocchioMethodClosure new
			code: code;
			pinocchioClass: testCaseClass;
			selector: method selector asPSymbol)