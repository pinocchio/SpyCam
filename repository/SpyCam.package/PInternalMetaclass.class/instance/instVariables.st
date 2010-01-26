exporting
instVariables
	| instVars instVar |
	instVars := OrderedCollection new.
	self pInstVarNames do: [ :each |
			instVar := PInstanceVariable named: each.
			instVar localId: instVars size.
			instVars add: instVar.
	].
	^ instVars