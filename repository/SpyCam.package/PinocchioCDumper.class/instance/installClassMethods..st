convenience
installClassMethods: aPinocchioClass
	self newline.
	self comment: 'CLASS-METHODS ', aPinocchioClass name asString.
	aPinocchioClass methods do: [ :each|
		self newline.
		self installMethod: each for: aPinocchioClass.
	]