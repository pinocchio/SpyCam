as yet unclassified
ensure: pharoClass
	cls ifNil: [ cls := PharoClass wrap: pharoClass in: self ]
	 ifNotNil: [ (cls wraps: pharoClass) ifFalse: [ self error ] ].
	^ cls
	