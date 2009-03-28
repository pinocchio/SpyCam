variable
initializePrimaryVariable
	^ PEGParser
		named: 'PRIMARY-VARIABLE'
		parsing: self identifier
		semantics: [:result | ASTVariable new name: result ]