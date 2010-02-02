exporting
asPClass
	self = PBoolean ifFalse: [ ^ super asPClass ].
	^ Boolean asPClass.