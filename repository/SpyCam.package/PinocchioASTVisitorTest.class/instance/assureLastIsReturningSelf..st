running
assureLastIsReturningSelf: aBlock 
	| return |
	return := aBlock last.
	return class should = PinocchioReturn.
	return argument class should = PinocchioSelf