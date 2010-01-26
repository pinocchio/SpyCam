visitor
createClassMethods: aPinocchioClass
	| oldClass |
	oldClass := currentClass.
	currentClass  := aPinocchioClass pmetaclass.
	currentClass methods do: [ :each|
		self visit: each.
	].
	currentClass := oldClass.