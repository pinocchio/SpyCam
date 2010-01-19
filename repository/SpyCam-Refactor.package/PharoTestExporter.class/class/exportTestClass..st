instance creation
exportTestClass: aClass 
	^ self exportProtocols: aClass organization categories 
		fromClass: aClass