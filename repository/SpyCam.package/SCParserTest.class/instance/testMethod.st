tests
testMethod
	| parser string result |
	
	" We just allow fully MessageExpressions in our annotations. Semantic checker will catch this (probably :)) "

	parser := scparser method.

	string :=
		'a: b c: d
			|x y z|
			<abc: 1 def: 2+2 ghi: 3 b>
			<a: 4>
			<boe>
			1 + [ |a| a ] value: 3.
			^ 7 '.
 	result := (parser parse: string).
	self assert: (result class = ASTMethod).
	self assert: (result message class = ASTKeywordMessageDefinition).
	self assert: (result temporaries size = 3).
	self assert: (result annotations size = 3).
	self assert: (result statements size = 2).
	
	string :=
		'a: b c: d
			"boe" |x y z| "test"
			<abc: 1 "bla"def: 2+2 ghi: 3 b>
			<a: 4> "test"
			<boe>
			1 + [ |a| a ] value: "mmh" 3.
			^ 7 "biep". "bla" '.
 	result := (parser parse: string).
	self assert: (result class = ASTMethod).
	self assert: (result message class = ASTKeywordMessageDefinition).
	self assert: (result temporaries size = 3).
	self assert: (result annotations size = 3).
	self assert: (result statements size = 2).