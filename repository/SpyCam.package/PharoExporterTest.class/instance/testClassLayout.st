tests
testClassLayout
	| objectClass layout |
	objectClass := self exportClass: Class.
	layout := objectClass layout.
	layout class should = PObjectLayout.
	layout size should = 5.
	self checkClassLayoutMembers: layout.
	