accessing
uidFor: anObject
	uidCounter := uidCounter +1.
	^ (anObject objectName asLowercase, uidCounter printString) asString