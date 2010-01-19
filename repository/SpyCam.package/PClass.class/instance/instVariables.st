accessing
instVariables
	| instVarNames instVars localId supercls |
	instVarNames := OrderedCollection newFrom: self rawInstVarNames.
	instVars := OrderedCollection new.
	supercls :=  self superclass.
	supercls = PNil nil ifFalse: [
		instVars addAll: supercls layout.
	] ifTrue: [ Transcript show: self cls name, ' was nil'; cr ].
	instVarNames do: [ :each |
		instVars add: ((PInstanceVariable named: each) localId: instVars size).
	].
	^ instVars.