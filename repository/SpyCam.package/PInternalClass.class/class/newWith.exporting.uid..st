initialize-release
newWith: cls exporting: aPinocchioObject uid: uid
	^ self new cls: cls ; 
		name: cls pinocchioName asPSymbol;
		methodProvider: aPinocchioObject;
		uid: uid.