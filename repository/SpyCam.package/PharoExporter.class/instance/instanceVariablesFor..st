exporting
instanceVariablesFor: aPinocchioClass  
	| instVarNames instVars localId supercls |
	instVarNames := OrderedCollection newFrom: aPinocchioClass cls instVarNames.
	instVars := OrderedCollection new.
	supercls := self transformClass: aPinocchioClass cls superclass.
	supercls ifNotNil: [
		instVars addAll: supercls layout.
	].
	instVarNames do: [ :each |
		instVars add: ((PinocchioInstanceVariable named: each) localId: instVars size).
	].
	^ instVars.