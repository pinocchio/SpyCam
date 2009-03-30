tests
testParseTestMethods
	| parser string result code annotations annotation |
	<temps: 4 annotations: 1 statements: 2>
	parser := scparser method.
	
	(self class methodDict keys collect: [ :key |

	code := self class sourceCodeAt: key.
	string := PEGMemoizedStringScanner on: code separator: scparser separator.
	result := (parser match: string).
	self assert: (result class = ASTMethod).
	
	annotations := result annotations select: [ :ann | (ann class = ASTKeywordAnnotation) and: [ ann keywords asArray = #(temps annotations statements) ] ].
	(annotations size = 1) ifTrue: [ annotation := annotations first.
		result temporaries size = (annotation arguments at: 1) asInteger.
		result annotations size = (annotation arguments at: 2) asInteger.
		result statements size = (annotation arguments at: 3) asInteger.
	].
	
	self assert: (string atEnd).
	result
	
	]) "inspect"