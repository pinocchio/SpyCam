exporting
transformMethodsFor: aPinocchioClass
	| method methods methodDict cls |
	cls := aPinocchioClass methodProvider.
	methods := aPinocchioClass pinocchioMethods.
	methodDict := Dictionary new.
	methods do: [ :selector|
		method := cls methodDictionary at: selector.
		Transcript show: ('    ', cls name, '>>', method selector); cr.
		method :=  self transformMethod: method getSource.
		methodDict at: method selector put: method.
	].

	^ methodDict.