instance creation
named: aSymbol
	^ self symbolDictionary at: aSymbol 
			ifAbsentPut: [self new symbol: aSymbol] 