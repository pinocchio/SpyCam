convenience
exportClassSend: anASTMethod compiledMethod: aCompiledMethod 
	| arguments |
	arguments := self testArgumentsFor: anASTMethod of: aCompiledMethod.
	^ self exportClassInstance perform: anASTMethod selector asSymbol
						withArguments: arguments.