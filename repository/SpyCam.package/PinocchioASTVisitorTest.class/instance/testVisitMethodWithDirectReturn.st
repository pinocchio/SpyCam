running
testVisitMethodWithDirectReturn
	| ast block return returningBlock |
	parser := scparser method.
	ast := self ast: 'doIt' , String cr , ' ^ true.'.

	ast class should = PinocchioMethod.
	ast hasReturn should = true.
	ast params class should = PinocchioArray.
	ast locals class should = PinocchioArray.
	ast size should = 1.  "true"
	ast first class should = PinocchioInternalVariable.