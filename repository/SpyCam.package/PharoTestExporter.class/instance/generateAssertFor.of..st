exporting
generateAssertFor: anASTMethod of: aCompiledMethod
	"Creates the corresponding ast object and sends an equals to it"
	| instance result arguments |
	result := self exportClassSend: anASTMethod compiledMethod: aCompiledMethod.
	result == self exportClassInstance ifTrue: [
		^ self putAssert: 'result == ((AST_Constant)test_Class_Instance)->constant'.
	].
	[self generateAssertForResult: result.] on: Error do: [ 
		self generateEqualsSendFor: result.
		self generateAssertForResult: true.
	]