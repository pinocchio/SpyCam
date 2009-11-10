tests
testKeywordsArguments
	| parser string result |
	parser := scparser keywordsArguments.
	string := PEGStringScanner on: 'test: ab'.
	result := parser match: string.
	self assert: result class = ASTKeywordMessageDefinition.
	self assert: result keywords = (OrderedCollection with: 'test').
	self assert: result parameters size = 1.
	self assert: result parameters first = (ASTVariable new name:'ab').
	self assert: string position = 8.
	string := PEGStringScanner on: 'bla a'.
	self assert: (parser match: string) isNil.
	self assert: string position = 0.
	string := PEGStringScanner on: 'test: d bla: c boe'.
	result := parser match: string.
	self assert: result class = ASTKeywordMessageDefinition.
	self assert: result keywords = (OrderedCollection 
				with: 'test'
				with: 'bla').
	self assert: result parameters size = 2.
	self assert: result parameters first = (ASTVariable new name:'d').
	self assert: result parameters second = (ASTVariable new name:'c').
	self assert: string position = 15