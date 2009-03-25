as yet unclassified
separator
	Separator ifNil: [
		Separator := ((Character space asPEG) | Character tab <= Character cr) times.
	].
	^ Separator