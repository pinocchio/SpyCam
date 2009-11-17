visitor
visitSend: aPinocchioSend 
	self visit: aPinocchioSend receiver.
	self visit: aPinocchioSend message.
	self visit: aPinocchioSend arguments.
	self put: aPinocchioSend 
		with: ('new_AST_Send(',aPinocchioSend receiver uid,', ',
							    '(Object)', aPinocchioSend message uid,', ',
							    '(Type_Array)', aPinocchioSend arguments uid,')').