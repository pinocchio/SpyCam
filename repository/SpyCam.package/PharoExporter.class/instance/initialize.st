initialize-release
initialize
	super initialize.
	root := PinocchioRootPackage new.
	done := IdentityDictionary new.
	scparser := SCParser new.
	pinocchioVisitor := PinocchioASTVisitor new.
	pinocchioVisitor world: self.