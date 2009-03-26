as yet unclassified
comment
	| commentBorder |
	commentBorder := '"' asPEG.
	^ ((commentBorder strongAnd: ((commentBorder not) times)) <= commentBorder) strongPlus