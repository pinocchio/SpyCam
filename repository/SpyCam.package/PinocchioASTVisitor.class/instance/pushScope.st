visitor
pushScope
	parentScope := scope.
	scope := PinocchioSubScope new: parentScope