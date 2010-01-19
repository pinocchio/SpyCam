exporting
layoutFor: aPinocchioClass
	| layout |
	aPinocchioClass sclass isBytes ifTrue: [ 
		self error: 'Not supperted layout!'.
	].
	aPinocchioClass sclass isBits ifTrue: [ 
		self error: 'Not supperted layout!'.
	].
	aPinocchioClass sclass isWeak ifTrue: [ 
		self error: 'Not supperted layout!'.
	].
	aPinocchioClass sclass isVariable ifTrue: [
		^ PArrayLayout newFrom: aPinocchioClass instVariables. 
	].
	aPinocchioClass sclass isFixed ifTrue: [
		^ PObjectLayout newFrom: aPinocchioClass instVariables.
	].
	self error: 'Got unknown type'.
	
	