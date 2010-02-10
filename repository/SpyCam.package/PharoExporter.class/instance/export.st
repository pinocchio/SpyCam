exporting
export
	| astExtractor |
	astExtractor := PharoASTExporter new.
	progress := [astExtractor progress / 5].
	root := 	astExtractor extract: self todo.
	classASTs := astExtractor classASTs.
	
	progress := [cdumper progress * (4/5) + (1/5)].
	cdumper export: root.