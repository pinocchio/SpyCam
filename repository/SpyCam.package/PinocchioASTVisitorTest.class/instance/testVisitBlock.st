running
testVisitBlock
	| emptyblock variable result |
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
	self assert: result params class = PinocchioArray.
	self assert: result params values class = OrderedCollection.
	self assert: result params values first class = PinocchioVariable.
	self assert: result params values first name = 'element'.
	self assert: result locals class = PinocchioArray.
	self assert: result locals values class = OrderedCollection.
	self assert: result locals values first class = PinocchioVariable.
	self assert: result locals values first name = 'temp'.
	self assert: result body class = PinocchioArray.
	self assert: result body values class = OrderedCollection.
	self assert: result body values first class = PinocchioAssign.
	self assert: result body values first variable class = PinocchioVariable.
	self assert: result body values first variable name = 'element'.
	self assert: result body values first variable ==
		result params values first.
