convenience
exportClassSend: anASTMethod compiledMethod: aCompiledMethod 
	| arguments returnValue |
	arguments := self testArgumentsFor: anASTMethod of: aCompiledMethod.
	self exportClassInstance setUp.
	returnValue := self exportClassInstance perform: anASTMethod selector asSymbol
						withArguments: arguments.
	self exportClassInstance tearDown.				
	^ returnValue.