accessing
symbolDictionary
	symbolDictionary ifNil: [symbolDictionary := SmallDictionary new].
	^ symbolDictionary. 