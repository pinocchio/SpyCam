exporting
layoutFor: cls
	| layout |
	cls isBytes ifTrue: [ 
		self error: 'Not supperted layout!'.
	].
	cls isBits ifTrue: [ 
		self error: 'Not supperted layout!'.
	].
	cls isWeak ifTrue: [ 
		self error: 'Not supperted layout!'.
	].
	cls isVariable ifTrue: [ 
		^ PinocchioArrayLayout newFrom: (self instanceVariablesFor: cls). 
	].
	cls isFixed ifTrue: [
		^ PinocchioObjectLayout newFrom: (self instanceVariablesFor: cls).
	].
	self error: 'Got unknown type'.
	
	