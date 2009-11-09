as yet unclassified
ensure: aPinocchioClass
	cls ifNil: [ cls := aPinocchioClass ]
	 ifNotNil: [ (cls = aPinocchioClass) ifFalse: [ self error ] ].
	^ cls
	