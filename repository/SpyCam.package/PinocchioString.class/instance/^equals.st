comparing
= other
	self class = other class ifFalse: [ ^ false].
	^self string = other string