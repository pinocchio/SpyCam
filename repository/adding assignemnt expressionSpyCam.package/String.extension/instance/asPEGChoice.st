*SpyCam-PEG
asPEGChoice
	| result |
	result := PEGOrderedChoiceExpression new.
	self do: [ :char | result <= char asPEG ].
	^ result