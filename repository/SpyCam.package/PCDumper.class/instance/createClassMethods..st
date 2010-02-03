visitor
createClassMethods: aPinocchioClass
	self currentClass should be isNil.
	self currentClass: aPinocchioClass pmetaclass.
	self currentClass methods do: [ :each|
		self visit: each.
	].
	self currentClass: nil.