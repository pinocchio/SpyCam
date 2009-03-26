as yet unclassified
comment
	| commentBorder |
	commentBorder := '"' asPEG.
	^ (commentBorder strongAnd: ((commentBorder not) strongTimes)) <= commentBorder