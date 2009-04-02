running
setUp
	super setUp.
	classA := ClassMirror new.
	classA methods: OrderedCollection new.
	classA instanceVariables: OrderedCollection new.
	classB := ClassMirror new.
	classB methods: OrderedCollection new.
	classB instanceVariables: OrderedCollection new