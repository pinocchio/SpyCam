*SpyCam-Pinocchio
pInstVarNames
	^ (OrderedCollection newWith: super pInstVarNames)
		add: #name;
		add: #package;
		yourself.