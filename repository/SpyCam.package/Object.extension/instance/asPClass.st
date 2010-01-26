*SpyCam-Pinocchio
asPClass
	|dict|
	dict ifNil: [
		dict := Dictionary new.
		dict at: Object 			put: {PObject. 'Type_Object_Class'}.
		dict at: Class 			put: {PClass. 'Class'}.
		dict at: Metaclass 		put: {PMetaclass. 'Metaclass'}.
		dict at: Behavior 	 	put: {PBehavior. 'Behavior'}.
		dict at: True 			put: {PTrue. 'True_Class'}.
		dict at: False 			put: {PFalse. 'False_Class'}.
		dict at: String 			put: {PString. 'String_Class'}.
		dict at: Symbol 			put: {PSymbol. 'Symbol_Class'}.
		dict at: Character 		put: {PCharacter. 'Character_Class'}.
		dict at: SmallInteger 	put: {PSmallInt. 'SmallInt_Class'}.
	].
	dict at: self ifPresent: [ :aTuple|
		^ PInternalClass newWith: self 
				exporting: aTuple first
				uid: aTuple second.
	].
	^ PClass newWith: self.