as yet unclassified
temporaries
	^ PEGParser
		named: 'TEMPORARIES'
		parsing: (self bar & self variableName times <= self bar)