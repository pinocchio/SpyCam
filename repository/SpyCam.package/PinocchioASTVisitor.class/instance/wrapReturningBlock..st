convenience
wrapReturningBlock: aBlock 
	| body callec |
	body := PinocchioArray new.
	callec := PinocchioCallec new 
		block: (PinocchioBlock new
					params: (PinocchioArray  with: 'return' asPVariable);
					body: aBlock body;
					locals: aBlock locals) .
	body add: callec.
	^ PinocchioBlock new
		params: aBlock params;
		body: body;
		locals: PinocchioArray new.