accessing
astSelectors 
	^ OrderedCollection newFrom: #(#argument #receiver); 
		addAll: super astSelectors;
		yourself.