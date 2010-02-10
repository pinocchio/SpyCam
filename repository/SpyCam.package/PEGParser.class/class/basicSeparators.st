instance creation
basicSeparators
	separators ifNil: [ separators := (Character space asPEG) | Character tab <= Character cr ].
	1*2.
	separators isNil.
	^ separators  " Separators := nil "