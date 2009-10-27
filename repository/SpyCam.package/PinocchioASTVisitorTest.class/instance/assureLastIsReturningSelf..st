running
assureLastIsReturningSelf: aBlock 
	| return |
	return := aBlock body last.
	return class should = PinocchioReturn.
	return argument class should = PinocchioSelf