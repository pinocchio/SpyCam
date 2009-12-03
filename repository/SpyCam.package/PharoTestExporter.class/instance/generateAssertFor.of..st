exporting
generateAssertFor: anASTMethod of: aCompiledMethod
	"Creates the corresponding ast object and sends an equals to it"
	| instance result arguments |
	instance := self exportClass new.
	arguments := self testArgumentsFor: anASTMethod of: aCompiledMethod.
	result := instance perform: anASTMethod selector asSymbol
						withArguments: arguments.
	result == instance ifTrue: [
		^ self putAssert: 'result == ((AST_Constant)test_Class_Instance)->constant'.
	].
	[self generateAssertForResult: result.] on: Error do: [ 
		self generateEqualsSendFor: result.
		self generateAssertForResult: true.
	]