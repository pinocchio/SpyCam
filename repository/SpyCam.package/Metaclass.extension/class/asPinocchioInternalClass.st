*SpyCam-Pinocchio
asPinocchioInternalClass
	self = Metaclass  ifTrue: [^ PinocchioMetaclass ].
	^ super asPinocchioInternalClass