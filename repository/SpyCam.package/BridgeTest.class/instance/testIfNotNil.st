test-basics
testIfNotNil
	| a |
	a := false.
	
	nil ifNotNil: [ a true].
	a should = false.
	
	1 ifNotNil: [:arg| a:= arg].
	a should = 1.