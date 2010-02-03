exporting
asPClass 
	self = PMethodClosure  ifFalse: [ ^ super PMethodClosure ].
	self halt.