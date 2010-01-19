accessing
pinocchioClass: aPinocchioClass
	scope isRootScope ifFalse: [ 
		self error: ('Current scope is not RootScope but ', scope class name).
	].
	
	pinocchioClass := aPinocchioClass.
	scope := PClassScope new 
		pinocchioClass: aPinocchioClass;
		parentScope: scope.