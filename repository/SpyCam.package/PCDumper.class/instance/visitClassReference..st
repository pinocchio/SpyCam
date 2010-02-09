visitor
visitClassReference: aPinocchioClassReference
	| oldClass |
	oldClass := self currentClass.
	self currentClass: aPinocchioClassReference pclass.
	self visit: aPinocchioClassReference pclass.
	self currentClass: oldClass.