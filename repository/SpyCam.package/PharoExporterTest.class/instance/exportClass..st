convenience
exportClass: aClass 
	currentRoot := PharoExporter export: (OrderedCollection with: aClass).
	self halt.