*SpyCam-Pinocchio
asPClass
	|dict|
	dict ifNil: [
		dict := Dictionary new.
		dict at: Object 			put: {PinocchioObject. 'Type_Object_Class'}.
		dict at: Class 			put: {PinocchioClass. 'Class'}.
		dict at: Metaclass 		put: {PinocchioMetaclass. 'Metaclass'}.
		dict at: Behavior 	 	put: {PinocchioBehaviour. 'Behaviour'}.
		dict at: True 			put: {PinocchioTrue}.
		dict at: False 			put: {PinocchioFalse}.
		dict at: String 			put: {PinocchioString}.
		dict at: Symbol 			put: {PinocchioSymbol}.
		dict at: Character 		put: {PinocchioCharacter}.
		dict at: SmallInteger 	put: {PinocchioSmallInt}.
	].
	dict at: self ifPresent: [ :aTuple|
		^ PinocchioInternalClass newWith: self 
				exporting: aTuple first
				uid: aTuple second.
	].
	^ PinocchioClass newWith: self.