exporting
transformMethodsFor: cls
	| method methods methodDict |
	methods := cls pinocchioMethods.
	methods = #all ifTrue: [
		methods := cls methods collect: #selector.
	].
	methodDict := Dictionary new.
	methods collect: [ :selector|
		method := cls methodDictionary at: selector.
		Transcript show: ('    ', cls name, '>>', method selector); cr.
		method :=  self transformMethod: method getSource.
		methodDict at: method selector put: method.
	].

	^ methodDict.