*SpyCam-Pinocchio
asPClass
	self = Class ifTrue: [ ^ PinocchioInternalClass newWith: self ].
	^ super asPClass.