exporting
asPClass 
	self = PArray ifFalse: [ ^ super asPClass ].
	^ Array asPClass
	