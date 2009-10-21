accessing
astSelectors 
	^ (OrderedCollection newFrom: #(#name))
		addEvery: (self superclass astSelectors)