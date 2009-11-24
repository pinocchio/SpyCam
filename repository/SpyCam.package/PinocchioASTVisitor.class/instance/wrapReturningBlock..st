convenience
wrapReturningBlock: aBlock 
	| body callec |
	callec := PinocchioCallec new 
		block: (PinocchioBlock new
					params: (PinocchioArray  with: 'return' asPVariable);
					body: aBlock body copy;
					locals: aBlock locals).
	self halt.
	^ PinocchioBlock new
		params: aBlock params;
		body: (PinocchioArray with: callec);
		locals: PinocchioArray new.