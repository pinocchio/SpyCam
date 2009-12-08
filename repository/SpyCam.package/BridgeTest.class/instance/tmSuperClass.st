test-class
tmSuperClass
	| instance |
	instance := ChildClassTestClass new.
	instance a: 1.
	instance b: 2.
	self assert: instance a = 1.
	self assert: instance b = 2.