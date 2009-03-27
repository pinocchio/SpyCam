tests
testBinaryArgument
	| parser string result |

	parser := SCParser binaryArgument.
	
	string := PEGMemoizedStringScanner on: '+= a'.
	result := (parser match: string).
	self assert: (result class = ASTArgumentSelector).
	self assert: (result keywords = (OrderedCollection with: '+=')).
	self assert: (result arguments = (OrderedCollection with: 'a')).
	self assert: (string position = 4).
	
	string := PEGMemoizedStringScanner on: '|= a'.
	self assert: (parser match: string) isNil.
	self assert: (string position = 0).
	
	string := PEGMemoizedStringScanner on: '-= abc d'.
	result := (parser match: string).
	self assert: (result class = ASTArgumentSelector).
	self assert: (result keywords = (OrderedCollection with: '-=')).
	self assert: (result arguments = (OrderedCollection with: 'abc')).
	self assert: (string position = 6).