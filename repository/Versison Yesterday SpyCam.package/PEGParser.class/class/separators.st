as yet unclassified
separators
	Separators ifNil: [ Separators := (Character space asPEG) | Character tab <= Character cr ].
	^ Separators  " Separators := nil "