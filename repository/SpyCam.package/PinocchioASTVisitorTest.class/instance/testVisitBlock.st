running
testVisitBlock
	| emptyblock variable block result |
	emptyblock := ASTBlock new.
	result := visitor visit: emptyblock.
	self assert: result class = PinocchioBlock.
	self assert: result params class = PinocchioArray.
	self assert: result params values = #().
	self assert: result locals class = PinocchioArray.
	self assert: result locals values = #().
	self assert: result body class = PinocchioArray.
	self assert: result body values = #().
	variable := ASTVariable new name: #element.
	result := self ast: '[:element || temp | element := 1.]'.
	self assert: result class = PinocchioBlock.
