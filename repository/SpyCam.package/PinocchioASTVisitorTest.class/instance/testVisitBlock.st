running
testVisitBlock
	| emptyblock variable result |
	emptyblock := ASTBlock new.
	result := visitor visit: emptyblock.
	result class should = PinocchioBlock.
	result params class should = PinocchioArray.
	result locals class should = PinocchioArray.
	result body class should = PinocchioArray.
	
	variable := ASTVariable new name: #element.
	result := self ast: '[:element || temp | element := 1.]'.
	result class should = PinocchioBlock.
	result params class should = PinocchioArray.
	result params first class should = PinocchioVariable.
	result params first name should = 'element'.
	result locals class should = PinocchioArray.
	result locals first class should = PinocchioVariable.
	result locals first name should = 'temp'.
	result body class should = PinocchioArray.
	result body first class should = PinocchioAssign.
	result body first variable class should = PinocchioVariable.
	result body first variable name should = 'element'.
	result body first variable should == result params first.
