accessing
uid
	uid ifNil: [ uid := self class uidFor: self].
	^ uid.