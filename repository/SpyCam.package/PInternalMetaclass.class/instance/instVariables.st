exporting
instVariables
	| instVarNames instVars instVar |
	instVars := OrderedCollection new.
	
	
	self pClassInstVarNames do: [ :each |
		instVars do: [ :var|
			var name = each ifTrue: [
				self error: 'Double Declaration of "', each, '"'
			].
		].
		instVar := PInstanceVariable named: each.
		instVar localId: instVars size.
		instVars add: instVar.
	].
	^ instVars.