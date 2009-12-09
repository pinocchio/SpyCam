*SpyCam-Pinocchio
asPinocchioInternalClass
	self halt.
	self = Metaclass  ifTrue: [^ PinocchioMetaclass ].
	^ super asPinocchioInternalClass