tests
testParseTestMethods
	| parser string result code |

	parser := scparser method.
	
	(self class methodDict keys collect: [ :key |

	code := self class sourceCodeAt: key.
	string := PEGMemoizedStringScanner on: code separator: scparser separator.
	result := (parser match: string).
	self assert: (result class = ASTMethod).
	self assert: (string atEnd).
	result
	
	]) "inspect"