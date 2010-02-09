convenience
export
	| astExtractor |
	astExtractor := PharoASTExporter new.
	root := 	astExtractor extract: self todo.
	classASTs := astExtractor classASTs.
	
	cdumper export: root.