accessing
asPClass
	^ PinocchioInternalClass new 
		name: self pinocchioName asPSymbol;
		uid: #'Type_Object'.
		