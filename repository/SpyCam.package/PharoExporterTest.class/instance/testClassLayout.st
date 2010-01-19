tests
testClassLayout
	| childClass parentClass |
	childClass := self exportClass: ChildClassTestClass.
	parentClass := self exportClass: SuperClassTestClass