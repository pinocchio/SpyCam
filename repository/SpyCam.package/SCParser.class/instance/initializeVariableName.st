variable
initializeVariableName
	^ PEGParser
		named: 'VARIABLE-NAME'
		parsing: self identifier
		semantics: [:result | ASTVariable new name: result asSymbol]