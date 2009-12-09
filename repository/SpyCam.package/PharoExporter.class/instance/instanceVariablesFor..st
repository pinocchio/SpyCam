exporting
instanceVariablesFor: aClass 
	| instVarNames instVars localId |
	instVarNames := OrderedCollection newFrom: aClass instVarNames.
	localId := -1.
	instVars := instVarNames collect: [ :each |
		localId := localId + 1.
		(PinocchioInstanceVariable named: each) localId: localId.
	].
	self done at: aClass superclass ifPresent: [ :superclass|
		instVars addAll: superclass layout.
	].
	^ instVars.