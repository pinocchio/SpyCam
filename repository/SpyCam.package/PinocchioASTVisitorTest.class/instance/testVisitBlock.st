running
testVisitBlock
	"TODO Write this Test
	| string result |
	string := ASTString new string: 'My funky test string.'.
	result := visitor visit: string.
	self assert: (result class = PinocchioString).
	self assert: (result string = 'My funky test string.')."
	| emptyblock block result |
	emptyblock := ASTBlock new.
	result := visitor visit: emptyblock.
	self assert: (result class = PinocchioBlock).
	self assert: (result paramCount class = PinocchioConstant).
	self assert: (result paramCount constant class = PinocchioSmallInt).
	self assert: (result paramCount constant int = 0).
	self assert: (result localCount class = PinocchioConstant).
	self assert: (result localCount constant class = PinocchioSmallInt).
	self assert: (result localCount constant int = 0).
	self assert: (result body class = PinocchioArray).
	self assert: (result body size class = PinocchioConstant).
	self assert: (result body size constant class = PinocchioSmallInt).
	self assert: (result body size constant int = 0).
	self assert: (result body values = #()).
	"TODO: add tests for non empty ASTBlock"