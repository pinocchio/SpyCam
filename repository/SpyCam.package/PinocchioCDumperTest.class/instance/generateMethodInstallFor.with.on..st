test-source-output
generateMethodInstallFor: methodSelector with: body on: outStream.
	dumper stream: outStream.
	dumper visit: (
		PinocchioMethodClosure new
			code: body;
			pinocchioClass: (PinocchioInternalVariable new uid: 'Test_Class');
			selector: methodSelector asPSymbol)