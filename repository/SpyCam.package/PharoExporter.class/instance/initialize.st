initialize-release
initialize
	super initialize.
	root := PRootPackage new.
	done := IdentityDictionary new.
	todo := OrderedCollection new.
	scparser := SCParser new.
	pinocchioVisitor := PASTVisitor new.
	pinocchioVisitor world: self.
	cdumper := PCDumper new.
	classASTs := Dictionary new.