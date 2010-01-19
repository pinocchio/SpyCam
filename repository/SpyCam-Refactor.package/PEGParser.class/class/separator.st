instance creation
separator
	Separator ifNil: [
		Separator := self separators strongTimes.
	].
	^ Separator  " Separator := nil "