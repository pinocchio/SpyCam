exporting
layoutFor: aPinocchioClass
	| layout |
	aPinocchioClass cls isBytes ifTrue: [ 
		self error: 'Not supperted layout!'.
	].
	aPinocchioClass cls isBits ifTrue: [ 
		self error: 'Not supperted layout!'.
	].
	aPinocchioClass cls isWeak ifTrue: [ 
		self error: 'Not supperted layout!'.
	].
	aPinocchioClass cls isVariable ifTrue: [
		^ PArrayLayout newFrom: aPinocchioClass instVariables. 
	].
	aPinocchioClass cls isFixed ifTrue: [
		^ PObjectLayout newFrom: aPinocchioClass instVariables.
	].
	self error: 'Got unknown type'.
	
	