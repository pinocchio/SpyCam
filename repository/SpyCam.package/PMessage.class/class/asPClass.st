pharo-exporting
asPClass 
	<preventExport>
	self = PMessage ifFalse: [ ^ super PMethodClosure ].
	^ PInternalClass newWith: PMessage
		uid: 'Runtime_Message'.