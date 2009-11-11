initialize-release
initializeSymbols
	self symbolDefintion do: [ :pair|
		self symbolDictionary at: (pair first) 
			ifAbsentPut: [PinocchioInternalSymbol new 
								symbol: (pair first);
								uid: (pair at: 2)] 
	]