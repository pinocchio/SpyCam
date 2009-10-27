accessing
symbolDictionary
	symbolDictionary ifNil: [symbolDictionary := Dictionary new].
	^ symbolDictionary. 