exporting
transformMethodsFor: cls
	| method methods |
	methods := cls pinocchioMethods.
	methods = #all ifTrue: [
		methods := cls methods collect: #selector.
	].
	^  methods collect: [ :selector|
		method := cls methodDictionary at: selector.
		Transcript show: ('    ', cls name, '>>', method selector); cr.
		self transformMethod: method getSource.
	].