exporting
export
	| astExtractor |
	astExtractor := PharoASTExporter new.
	progress := [astExtractor progress / 2].
	root := 	astExtractor extract: self todo.
	classASTs := astExtractor classASTs.
	
	progress := [cdumper progress / 2 + 0.5].
	cdumper export: root.