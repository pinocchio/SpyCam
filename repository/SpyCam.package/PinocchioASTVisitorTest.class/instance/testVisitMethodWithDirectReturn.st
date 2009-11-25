running
testVisitMethodWithDirectReturn
	| ast block return returningBlock |
	parser := scparser method.
	ast := self ast: 'doIt' , String cr , ' ^ true.'.

	ast class should = PinocchioMethod.
	ast hasReturn should = true.
	block := ast body.
	block class should = PinocchioArray.
	ast params class should = PinocchioArray.
	ast locals class should = PinocchioArray.
	ast body class should = PinocchioArray.
	ast body size should = 1.  "true"
	ast body first class should = PinocchioInternalVariable.