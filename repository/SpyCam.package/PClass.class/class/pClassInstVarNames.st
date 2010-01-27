exporting
pClassInstVarNames 
	^ (OrderedCollection withAll: super pClassInstVarNames)
		add: #name;
		add: #package;
		yourself