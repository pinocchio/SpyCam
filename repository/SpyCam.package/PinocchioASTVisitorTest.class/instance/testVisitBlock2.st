running
testVisitBlock2
	| emptyblock variable result |
	variable := ASTVariable new name: #element.
	result := self ast: '[:element || a b | true ifTrue: [ a] ifFalse: [b]]'.
	