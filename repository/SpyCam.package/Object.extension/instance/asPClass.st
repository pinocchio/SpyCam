*SpyCam-Pinocchio
asPClass
	|dict|
	dict ifNil: [
		dict := Dictionary new.
		dict at: Object 		put: {PinocchioObject. 'Type_Object'}.
		dict at: Class 			put: {PinocchioClass}.
		dict at: Metaclass 	put: {PinocchioMetaclass}.
		dict at: True 			put: {PinocchioTrue}.
		dict at: False 			put: {PinocchioFalse}.
		dict at: String 			put: {PinocchioString}.
		dict at: Symbol 		put: {PinocchioSymbol}.
		dict at: Character 		put: {PinocchioCharacter}.
		dict at: SmallInteger 	put: {PinocchioSmallInt}.
	].
	dict at: self ifPresent: [ :aTuple|
		^ PinocchioInternalClass newWith: self 
				exporting: aTuple first
				uid: aTuple second.
	].
	^ PinocchioClass newWith: self.