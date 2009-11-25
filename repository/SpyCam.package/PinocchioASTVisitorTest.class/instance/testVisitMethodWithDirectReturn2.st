running
testVisitMethodWithDirectReturn2
	| ast block return returningBlock |
	parser := scparser method.
	ast := self ast: 'doIt' , String cr , '|a|', String cr ,' a := 1+2.
	^ true.'.

	ast class should = PinocchioMethod.
	ast hasReturn should = true.
	block := ast body.
	block class should = PinocchioArray.
	ast params class should = PinocchioArray.
	ast locals class should = PinocchioArray.
	ast body class should = PinocchioArray.
	ast body size should = 2.  "1+2. true"
	ast body last class should = PinocchioInternalVariable.