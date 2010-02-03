exporting
asPClass 
	self = PBlockClosure ifFalse: [ ^ super asPClass ].
	^ PInternalClass newWith: PBlockClosure
		uid: 'Runtime_BlockClosure'.