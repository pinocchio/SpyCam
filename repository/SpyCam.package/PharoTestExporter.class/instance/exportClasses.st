exporting
exportClasses
	"Export all the needed test classes"
	| exporter |
	exporter := PharoExporter new.
	exporter export: self todo.
	
	self todo do: [ :sclass|
		PharoTestClassExporter export: (exporter classASTs at: sclass name).
	].