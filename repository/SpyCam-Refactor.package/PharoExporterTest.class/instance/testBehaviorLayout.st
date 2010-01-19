tests
testBehaviorLayout
	| objectClass layout |
	objectClass := self exportClass: Behavior.
	layout := objectClass layout.
	layout class should = PObjectLayout.
	layout size should = 3.
	self checkClassLayoutMembers: layout.
	