exporting
instVariables
	| instVarNames instVars instVar |
	instVars := OrderedCollection new.
	"TODO"
	self hasSuperclass ifTrue: [
		instVars addAll: self superclass layout.
	] ifFalse: [ 
		Transcript show: self sclass name, ' superclass was nil'; cr 
	].

	self pInstVarNames do: [ :each |
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