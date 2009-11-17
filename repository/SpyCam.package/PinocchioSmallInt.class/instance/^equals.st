comparing
= other
	self class = other class ifFalse: [ ^ false].
	^self int = other int