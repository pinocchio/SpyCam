instance creation
named: name
	^ self symbolDictionary at: name ifAbsentPut: [PinocchioSymbol new symbol: name] 