accessing
asPClass
	^ PInternalClass new 
		name: self pinocchioName asPSymbol;
		uid: #'Type_Object'.
		