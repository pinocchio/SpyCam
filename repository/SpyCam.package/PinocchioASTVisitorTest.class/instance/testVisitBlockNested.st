running
testVisitBlockNested
	| emptyblock variable result send |
	variable := ASTVariable new name: #element.
	result := self ast: '[:element || a b | [|c| [c := a+b] ]]'.
	
	result class should = PinocchioBlock.
	result locals size should = 2.
	result params size should = 1.
	result body size should = 1.
	result level should = 0.
	result body first class should = PinocchioBlock.
	result body first level should = 1.
	
	result body first body first class should = PinocchioBlock.
	result body first body first level should = 2.
	
	