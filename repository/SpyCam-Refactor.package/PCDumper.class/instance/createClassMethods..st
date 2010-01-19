visitor
createClassMethods: methods
	| oldClass |
	oldClass := currentClass.
	currentClass  := currentClass pclass.
	methods do: [ :each|
		self visit: each.
	].
	currentClass := oldClass.