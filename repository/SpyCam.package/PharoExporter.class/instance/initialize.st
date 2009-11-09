accessing
initialize
	root := PinocchioRootPackage new.
	done := IdentityDictionary new.
	scparser := SCParser new.
	pinocchioVisitor := PinocchioASTVisitor new.