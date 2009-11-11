instance creation
named: name
	^ self symbolDictionary at: name ifAbsentPut: [self new symbol: name] 