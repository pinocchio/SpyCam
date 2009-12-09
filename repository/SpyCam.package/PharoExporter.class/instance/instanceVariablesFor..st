exporting
instanceVariablesFor: aClass 
	| instVarNames instVars localId |
	instVarNames := OrderedCollection newFrom: aClass instVarNames.
	localId := 0.
	instVars := instVarNames collect: [ :each |
		(PinocchioInstanceVariable named: each) localId: localId.
		localId := localId + 1.
	].
	self done at: aClass superclass ifPresent: [ :superclass|
		instVars addAll: superclass layout.
	].
	^ instVars.