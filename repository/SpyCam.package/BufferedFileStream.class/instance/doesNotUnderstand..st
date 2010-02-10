system primitives
doesNotUnderstand: aMessage
	|returnValue|
	returnValue := (fileStream 
		perform: aMessage selector 
		withArguments: aMessage arguments).
		
	returnValue = fileStream ifFalse: [ ^ returnValue].