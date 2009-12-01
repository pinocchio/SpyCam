running
testVisitMethodWithDirectReturn2
	| ast block return returningBlock |
	parser := scparser method.
	ast := self ast: 'doIt' , String cr , '|a|', String cr ,' a := 1+2.
	^ true.'.

	ast class should = PinocchioMethod.
	ast depth should = 0.
	ast hasReturn should = true.
	ast params class should = PinocchioArray.
	ast locals class should = PinocchioArray.
	ast size should = 2.  "1+2. true"
	ast last class should = PinocchioInternalVariable.