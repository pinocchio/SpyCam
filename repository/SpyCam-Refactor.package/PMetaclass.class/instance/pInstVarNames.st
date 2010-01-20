exporting
pInstVarNames
	^ super pInstVarNames
		addAll: self smetaclass instVarNames;
		yourself.