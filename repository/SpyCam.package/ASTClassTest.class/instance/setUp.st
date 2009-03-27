running
setUp
	super setUp.
	classA := ASTClass new.
	classA methods: OrderedCollection new.
	classA instanceVariables: OrderedCollection new.
	
	classB := ASTClass new.
	classB methods: OrderedCollection new.
	classB instanceVariables: OrderedCollection new.