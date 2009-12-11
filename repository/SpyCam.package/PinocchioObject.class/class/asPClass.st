accessing
asPClass
	self halt.
	^ PinocchioInternalClass new 
		name: self pinocchioName asPSymbol;
		uid: #'Type_Object'.
		