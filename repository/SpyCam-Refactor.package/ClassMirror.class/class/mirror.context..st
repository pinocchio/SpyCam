instance creation
mirror: aClass context: aContext 
	^ self new
		internalClass: aClass;
		context: aContext