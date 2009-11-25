visitor
createCallecBodyFor: aMethod
	| body |
	self pushScope.
	self currentCallecVariable: (PinocchioVariable named: #return).
	"self scope declare: self currentCallecVariable as: 1."
	body := self createBlock.
	body params: (PinocchioArray with: self currentCallecVariable);
		body: (self acceptOnCollection: aMethod statements) asPArray.
	self popScope.
	^ body
	