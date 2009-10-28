running
testVisitBlock2
	| emptyblock variable result send |
	variable := ASTVariable new name: #element.
	result := self ast: '[:element || a b | true ifTrue: [ a] ifFalse: [b]]'.
	
	result class should = PinocchioBlock.
	result locals size should = 2.
	result params size should = 1.
	result body size should = 1.
	
	send := result body first.
	send class should = PinocchioSend.
	