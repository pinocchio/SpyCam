accessing
uid
	uid ifNotNil: [ ^ uid ].
	"create a default name from the class name"
	self halt.
	^ self sclass name