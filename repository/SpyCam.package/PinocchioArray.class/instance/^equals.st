comparing
= other
	self == other ifTrue: [^ true].
	self class ~= other class ifTrue: [ ^ false].
	self size timesRepeat: [ :index|
	 	(self at: index) = (other at: index) ifFalse: [ ^ false].
	].
	^ true.