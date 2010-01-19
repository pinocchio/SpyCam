*SpyCam-Pinocchio
asPClass
	|dict|
	dict ifNil: [
		dict := Dictionary new.
		dict at: Object 			put: {PObject. 'Type_Object_Class'}.
		dict at: Class 			put: {PClass. 'Class'}.
		dict at: Metaclass 		put: {PMetaclass. 'Metaclass'}.
		dict at: Behavior 	 	put: {PBehaviour. 'Behaviour'}.
		dict at: True 			put: {PTrue}.
		dict at: False 			put: {PFalse}.
		dict at: String 			put: {PString}.
		dict at: Symbol 			put: {PSymbol}.
		dict at: Character 		put: {PCharacter}.
		dict at: SmallInteger 	put: {PSmallInt}.
	].
	dict at: self ifPresent: [ :aTuple|
		^ PInternalClass newWith: self 
				exporting: aTuple first
				uid: aTuple second.
	].
	^ PClass newWith: self.