exporting
instanceVariablesFor: aClass 
	| instVarNames instVars index |
	instVarNames := OrderedCollection newFrom: aClass instVarNames.
	index := -1.
	instVars := instVarNames collect: [ :each|
		index := index +1.
		PinocchioInstanceVariable new 
			name: each;
			index: index.
	].
	self done at: aClass superclass ifPresent: [ :superclass|
		instVars addAll: superclass layout.
	].
	^ instVars.