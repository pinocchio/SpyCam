accessing
uidFor: anObject 
	self UIDCounter: self uidCounter + 1.
	^ (anObject objectName asLowercase , self uidCounter asString) asString