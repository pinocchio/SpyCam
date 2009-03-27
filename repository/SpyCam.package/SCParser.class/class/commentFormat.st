separator
commentFormat
	| commentBorder |
	commentBorder := '"' asPEG.
	^ (commentBorder && ((commentBorder not) strongTimes)) <= commentBorder