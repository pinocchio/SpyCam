instance creation
newWith: cls
	^ self new 
		sclass: cls; 
		name: cls pinocchioName asPSymbol.