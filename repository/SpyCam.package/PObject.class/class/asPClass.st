exporting
asPClass
	self = PObject ifFalse: [ ^ super asPClass ].
	^ Object asPClass.