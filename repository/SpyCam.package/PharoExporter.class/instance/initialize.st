initialize-release
initialize
	super initialize.
	root := PinocchioRootPackage new.
	done := IdentityDictionary new.
	todo := OrderedCollection new.
	scparser := SCParser new.
	pinocchioVisitor := PinocchioASTVisitor new.
	pinocchioVisitor world: self.
	cdumper := PinocchioCDumper new.
	classASTs := Dictionary new.