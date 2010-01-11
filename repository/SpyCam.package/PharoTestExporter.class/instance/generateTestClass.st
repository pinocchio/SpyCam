exporting
generateTestClass
	| exporter declarations |
	exporter := (PharoExporter new)
		cdumper: cdumper;
		todo: (OrderedCollection with: self exportClass);
		onAssignTo: [ :str :ast | self generateDeclarationFor: ast withString: str];
		export.
	
	outStream cr; nextPutAll: 'void create_ast() {'; cr.
	exporter printOn: outStream.
	outStream nextPutAll: '}'; cr.
	
	rootPackage := exporter root.
	pinocchioClassPackage := rootPackage lookUp: self exportClass category.
	pinocchioClass := exporter classASTs at: self exportClass name asSymbol