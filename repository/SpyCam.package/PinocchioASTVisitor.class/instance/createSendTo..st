convenience
createSendTo: receiver
	(receiver isKindOf: ASTSuper) ifTrue: [ ^ PinocchioSuper new].
	^ PinocchioSend new receiver:  (self visit: receiver).