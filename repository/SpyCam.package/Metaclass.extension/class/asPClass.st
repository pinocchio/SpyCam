*SpyCam-Pinocchio
asPClass
	self = Metaclass  ifTrue: [^ PinocchioMetaclass newWith: self ].
	^ super asPClass