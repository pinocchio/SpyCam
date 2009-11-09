accessing
pinocchioClass: aPinocchioClass
	pinocchioClass := aPinocchioClass.
	
	scope isRootScope ifFalse: [ 
		self error: ('Current scope is not RootScope but ', scope class name).
	].
	
	scope := PinocchioClassScope new 
		pinocchioClass: aPinocchioClass;
		parentScope: scope.
	self halt.