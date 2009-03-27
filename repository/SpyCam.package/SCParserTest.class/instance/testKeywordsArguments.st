tests
testKeywordsArguments
	| parser string result |

	parser := SCParser keywordsArguments.
	
	string := PEGMemoizedStringScanner on: 'test: ab'.
	result := (parser match: string).
	self assert: (result class = ASTArgumentSelector).
	self assert: (result keywords = (OrderedCollection with: 'test')).
	self assert: (result arguments = (OrderedCollection with: 'ab')).
	self assert: (string position = 8).
	
	string := PEGMemoizedStringScanner on: 'bla a'.
	self assert: (parser match: string) isNil.
	self assert: (string position = 0).
	
	string := PEGMemoizedStringScanner on: 'test: d bla: c boe'.
	result := (parser match: string).
	self assert: (result class = ASTArgumentSelector).
	self assert: (result keywords = (OrderedCollection with: 'test' with: 'bla')).
	self assert: (result arguments = (OrderedCollection with: 'd' with: 'c')).
	self assert: (string position = 15)..