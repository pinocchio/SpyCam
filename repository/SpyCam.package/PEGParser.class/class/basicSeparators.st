instance creation
basicSeparators
	separators ifNil: [ separators := (Character space asPEG) | Character tab <= Character cr ].
	^ separators  " Separators := nil "