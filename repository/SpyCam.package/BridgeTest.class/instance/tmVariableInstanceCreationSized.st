test-class
tmVariableInstanceCreationSized
	| instance |
	instance := StandardVariableTestClass basicNew: 100.
	instance at: 1 put: 1.
	instance at: 99 put: 100.
	self assert: (instance at: 1) = 1.
	"TODO match one based index of Smalltalk with 0 based index of Pinocchio"
	self assert: (instance at: 99) = 100.
	instance a: 1; b: 2; c: 3.
	self assert: instance a = 1.
	self assert: instance b = 2.
	self assert: instance c = 3.
	
	^ instance a + instance b + instance c + (instance at: 1) + (instance at: 99)
	