comparing
compatibleMethodsWith: anObject 
	"Test whether I have compatible methods with the anObject.
	I have compatible methods when foreach method in anObject there is a Method
	compatible methods. I can have more or different methods than anObject."
	anObject methods do: [ :method|
		(self hasCompatibleMethod: method)
			ifFalse:[ ^false ]].
	^ true