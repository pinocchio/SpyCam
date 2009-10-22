visitor
visitMethod: aMethod
	| block |
	block := PinocchioBlock new
				body: (self acceptOnCollection: aMethod statements) asPArray;
				locals: (self acceptOnCollection: aMethod temporaries) asPArray;
				params: (self acceptOnCollection: aMethod message params).
	^ PinocchioClosure new
		code: block.