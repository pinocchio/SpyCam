comparing
= other
	self == other ifTrue: [^ true].
	self class ~= other class ifTrue: [ ^ false].
	1 to: self size do: [ :index|
	 	(self at: index) = (other at: index) ifFalse: [ ^ false].
	].
	^ true.