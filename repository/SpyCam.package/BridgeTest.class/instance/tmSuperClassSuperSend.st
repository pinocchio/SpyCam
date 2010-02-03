test-class
tmSuperClassSuperSend
	| instance |
	instance := ChildClassTestClass basicNew.
	self assert: instance testSuper = 100