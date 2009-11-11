initialize-release
initializeSymbols
	self symbolDefintion do: [ :pair|
		self symbolDictionary at: (pair at: 1) 
			ifAbsentPut: [PinocchioInternalSymbol new 
								symbol: (pair at: 1);
								uid: (pair at: 2)] 
	]