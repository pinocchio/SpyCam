test-class
tmSuperClassSuperSend
	| instance |
	instance := ChildClassTestClass basicNew.
	self assert: instance test = 100