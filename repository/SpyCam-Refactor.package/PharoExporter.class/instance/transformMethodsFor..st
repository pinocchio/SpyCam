exporting
transformMethodsFor: aPinocchioClass
	| method methods methodDict cls |
	pinocchioVisitor pclass: aPinocchioClass.
	
	cls := aPinocchioClass methodProvider.
	methods := aPinocchioClass pMethods.
	methodDict := Dictionary new.
	methods do: [ :selector|
		method := cls methodDictionary at: selector.
		Transcript show: ('    ', cls name, '>>', method selector); cr.
		method :=  self transformMethod: method getSource.
		methodDict at: method selector put: method.
	].

	pinocchioVisitor popScope.
	^ methodDict.