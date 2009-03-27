separator
comment
	| commentBorder |
	commentBorder := '"' asPEG.
	^ (commentBorder strongAnd: ((commentBorder not) strongTimes)) <= commentBorder