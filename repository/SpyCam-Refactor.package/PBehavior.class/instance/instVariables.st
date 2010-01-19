accessing
instVariables
	| instVarNames instVars instVar |
	instVars := OrderedCollection new.
	self hasSuperclass ifTrue: [
		instVars addAll: self superclass layout.
	] ifFalse: [ 
		Transcript show: self sclass name, ' superclass was nil'; cr 
	].

	self pInstVarNames do: [ :each |
			instVar := PInstanceVariable named: each.
			instVar localId: instVars size.
			instVars add: instVar.
	].
	^ instVars.