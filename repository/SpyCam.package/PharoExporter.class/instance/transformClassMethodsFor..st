exporting
transformClassMethodsFor: aPinocchioClass
	| method methods methodDict cls |
	cls := aPinocchioClass methodProvider.
	methods := aPinocchioClass pinocchioClassMethods.
	methodDict := Dictionary new.
	methods do: [ :selector|
		method := cls class methodDictionary at: selector.
		Transcript show: ('    ', cls name, '>>', method selector); cr.
		method :=  self transformMethod: method getSource.
		methodDict at: method selector put: method.
	].

	^ methodDict.