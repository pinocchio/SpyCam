running
testVisitBlock
	| emptyblock variable result |
	emptyblock := ASTBlock new.
	result := visitor visit: emptyblock.
	result class should = PinocchioBlock.
	result params class should = PinocchioArray.
	result params values should = #().
	result locals class should = PinocchioArray.
	result locals values should = #().
	result body class should = PinocchioArray.
	result body values should = #().
	
	variable := ASTVariable new name: #element.
	result := self ast: '[:element || temp | element := 1.]'.
	result class should = PinocchioBlock.
	result params class should = PinocchioArray.
	result params values class should = OrderedCollection.
	result params values first class should = PinocchioVariable.
	result params values first name should = 'element'.
	result locals class should = PinocchioArray.
	result locals values class should = OrderedCollection.
	result locals values first class should = PinocchioVariable.
	result locals values first name should = 'temp'.
	result body class should = PinocchioArray.
	result body values class should = OrderedCollection.
	result body values first class should = PinocchioAssign.
	result body values first variable class should = PinocchioVariable.
	result body values first variable name should = 'element'.
	result body values first variable should == result params values first.
