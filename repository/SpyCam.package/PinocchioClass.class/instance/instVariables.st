accessing
instVariables
	| instVarNames instVars localId supercls |
	instVarNames := OrderedCollection newFrom: self rawInstVarNames.
	instVars := OrderedCollection new.
	supercls :=  self superclass.
	supercls ifNotNil: [
		instVars addAll: supercls layout.
	].
	instVarNames do: [ :each |
		instVars add: ((PinocchioInstanceVariable named: each) localId: instVars size).
	].
	^ instVars.