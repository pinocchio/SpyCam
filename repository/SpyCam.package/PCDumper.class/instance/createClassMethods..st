visitor
createClassMethods: methods
	| oldClass |
	oldClass := currentClass.
	currentClass  := currentClass pinocchioClass.
	methods do: [ :each|
		self visit: each.
	].
	currentClass := oldClass.