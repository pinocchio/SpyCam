instance creation
newWithPClass: aPInternalClass
	^ self new 
		sclass: aPInternalClass sclass; 
		pclass: aPInternalClass.