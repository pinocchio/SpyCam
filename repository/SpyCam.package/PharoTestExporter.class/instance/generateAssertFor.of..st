exporting
generateAssertFor: anASTMethod of: aCompiledMethod
	"Creates the corresponding ast object and sends an equals to it"
	| instance result arguments |
	instance := self exportClass new.
	anASTMethod annotations isEmpty  ifTrue: [
		arguments := Array new.
	] ifFalse: [
		arguments := self testArgumentsFor: aCompiledMethod.
	].
	[result := instance perform: anASTMethod selector asSymbol
						withArguments: arguments.
	] on: Error do: [
		self error: 'Invalid number of arguments for testmethod ',  
				anASTMethod selector asString, '. Did you add an argument annotation?'.
	].
	result == instance ifTrue: [
		^ self putAssert: 'result == test_Class_Instance'.
	].
	[self generateAssertForResult: result.] on: Error do: [ 
		self generateEqualsSendFor: result.
		self generateAssertForResult: true.
	]