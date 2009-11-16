*SpyCam-Pinocchio
printCEscapedOn: aStream
	| dictArray dict |
	dictArray := #( nil. ).
	dict := dictArray at: 1.
	dict ifNil: [
		dict := SmallDictionary new.
		dict at: Character cr put: '\n'.
		dict at: Character lf put: '\n'.
		dict at: Character tab put: '\t'.
		dict at: $\ put: '\\'.
		dict at: $" put: '\"'.
		dictArray at: 1 put: dict.
	].
	self do: [ :each|
		(dict includesKey: each) ifTrue: [
			aStream nextPutAll: (dict at: each).
		] ifFalse: [
			aStream nextPut: each.
		]
	]