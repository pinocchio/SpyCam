exporting
generateMethodInstallFor: method withCode: code
	| closure |
	closure := PinocchioMethodClosure new
			code: code;
			pinocchioClass: testCaseClass;
			selector: (PinocchioInternalVariable new uid: 'SMB_runTestCase').
	cdumper stream: outStream.
	cdumper visit: closure.
	outStream cr.
		