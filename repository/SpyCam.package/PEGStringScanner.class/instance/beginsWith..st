as yet unclassified
beginsWith: subCollection 
	| pattern startMatch |
	pattern := subCollection readStream.
	startMatch := nil.
	[ pattern atEnd ] whileFalse: 
		[ self atEnd ifTrue: [ ^ false ].
		self next ~= pattern next 
			ifTrue: [ ^ false ] ].
	^ true