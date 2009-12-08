exporting
generateTestClass
	| exporter declarations |
	declarations := WriteStream on: ''.
	exporter := PharoExporter new 
		cdumper: cdumper;
		todo: (OrderedCollection with: self exportClass);
		onAssignTo: [ :str :ast |
			declarations nextPutAll: 'Object ';
				nextPutAll:  ast uid asString;
				nextPutAll: ';';
				nextPutAll: String cr.
				ast uid asString, ' = ', str, ';', String cr.
			];
		export.
	outStream nextPutAll: declarations contents; cr; cr;
		nextPutAll: 'void create_ast() {'; cr.
		exporter printOn: outStream.
	outStream nextPutAll: '}'; cr.
	
	rootPackage := exporter root.
	
	pinocchioClassPackage := rootPackage lookUp: self exportClass category.
	pinocchioClass := exporter classASTs at: self exportClass name.
	