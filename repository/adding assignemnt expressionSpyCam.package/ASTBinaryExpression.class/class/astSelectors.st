accessing
astSelectors 
	^ (OrderedCollection newFrom: #(#argument #receiver))
		 addEvery: super astSelectors.