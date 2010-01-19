tests
testObjectLayout
	| objectClass |
	objectClass := self exportClass: Object.
	objectClass layout class should = PObjectLayout.
	objectClass size should = 1
	