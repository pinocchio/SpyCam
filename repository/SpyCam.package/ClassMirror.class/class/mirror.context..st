instance creation
mirror: aClass context: aContext 
	^ ClassMirror new
		internalClass: aClass;
		context: aContext