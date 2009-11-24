initialize-release
initialize 
	super initialize.
	scope := PinocchioRootScope new.
	rootScope := scope.
	self world: self rootScope.