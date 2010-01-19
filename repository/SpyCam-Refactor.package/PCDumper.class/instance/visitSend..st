visitor
visitSend: aPinocchioSend 
	self visit: aPinocchioSend receiver.
	self visit: aPinocchioSend message.
	self visitCollection: aPinocchioSend arguments.
	self put: aPinocchioSend 
		with: ('new_AST_Send((Object)',aPinocchioSend receiver uid,', ',
							    '(Object)', aPinocchioSend message uid,', ',
								(self multiArgFor: aPinocchioSend arguments) ,')').