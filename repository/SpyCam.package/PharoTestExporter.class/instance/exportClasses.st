exporting
exportClasses
	self clearDirectory: 'test'.
	exporter export: self todo.
	self todo
		do: [:t1 | PharoTestClassExporter
				export: (exporter classASTs at: t1 name)]