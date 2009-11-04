initialize-release
initialize 
	super initialize.
	decls := Dictionary new.
	self initializeGlobals.