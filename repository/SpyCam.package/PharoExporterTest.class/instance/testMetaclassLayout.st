tests
testMetaclassLayout
	| objectClass layout |
	objectClass := self exportClass: Metaclass.
	layout := objectClass layout.
	layout class should = PObjectLayout.
	layout size should = 3.
	self checkBehaviorLayoutMembers: layout.
	