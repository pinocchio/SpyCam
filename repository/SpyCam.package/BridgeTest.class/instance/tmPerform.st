test-basics
tmPerform
	| o |
	o := StandardTestClass new.
	o a: 10.
	^ o perform: #a.