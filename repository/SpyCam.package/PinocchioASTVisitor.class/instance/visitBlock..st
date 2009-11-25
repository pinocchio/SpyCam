visitor
visitBlock: aBlock 
	| block |
	self pushScope.
	scope declareAll: aBlock parameters.
	scope declareAll: aBlock temporaries.
	block := self createBlock.
	block params: (self acceptOnCollection: aBlock parameters) asPArray;
		locals: (self acceptOnCollection: aBlock temporaries) asPArray;
		body: (self acceptOnCollection: aBlock statements) asPArray.
	"self halt."
	self popScope.
	^ block