convenience
pushScope
	parentScope := scope.
	scope := PinocchioSubScope new: parentScope