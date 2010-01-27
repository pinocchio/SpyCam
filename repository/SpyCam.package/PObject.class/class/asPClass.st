accessing
asPClass
	^ (PInternalClass new)
		name: self pinocchioName asPSymbol;
		sclass: self;
		pclass: PObject;
		methodProvider: PObject;
		uid: #'Type_Object'.
		