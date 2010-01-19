initialize-release
newWith: cls exporting: aPinocchioObject uid: uid
	^ self new sclass: cls; 
		name: cls pinocchioName asPSymbol;
		methodProvider: aPinocchioObject;
		uid: uid.