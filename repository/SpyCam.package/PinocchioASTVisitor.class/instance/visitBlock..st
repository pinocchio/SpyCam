visitor
visitBlock: aBlock 
	^ PinocchioBlock new
		params: (self acceptOnCollection: aBlock statements) asPArray;
		locals: (self acceptOnCollection: aBlock temporaries) asPArray;
		body: (self acceptOnCollection: aBlock statements) asPArray.