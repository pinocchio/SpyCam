exporting
transformMethodsFor: cls
	| method |
	^ cls pinocchioMethods collect: [ :selector|
		method := cls methodDictionary at: selector.
		Transcript show: ('    ', cls name, '>>', method selector); cr.
		self transformMethod: method getSource.
	].