accessing
uidCounter
	UIDCounter ifNil: [ UIDCounter := 0 ].
	^ UIDCounter