accessing
uidFor: anObject
	self uidCounter: (self uidCounter +1).
	^ (anObject objectName asLowercase, self uidCounter printString) asString