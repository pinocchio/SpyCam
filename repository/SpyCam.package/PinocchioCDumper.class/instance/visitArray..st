visitor
visitArray: anASTArray 
	(anASTArray literals isNil or: [ anASTArray literals size = 0 ]) ifTrue: 
		[ ^ self 
			put: anASTArray
			with: 'empty_Type_Array' ].
	anASTArray literals do: [ :element | element accept: self ].
	self 
		put: anASTArray
		with: 'new_Type_Array_With(' , anASTArray literals size printString , ', ' , (', ' join: (anASTArray literals collect: [ :el | el uid ])) , ')'.
	stream cr