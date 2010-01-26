tests
testObjectLayout
	| objectClass |
	objectClass := self exportClass: Object.
	objectClass layout class should = PObjectLayout.
	objectClass layout size should = 0
	