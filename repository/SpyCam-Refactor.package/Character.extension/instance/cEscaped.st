*SpyCam-Pinocchio
cEscaped
	| dictArray dict |
	dictArray := #( nil. ).
	dict := dictArray at: 1.
	dict ifNil: [
		dict := SmallDictionary new.
		dict at: Character cr put: '\n'.
		dict at: Character lf put: '\n'.
		dict at: Character tab put: '\t'.
		dict at: $\ put: '\\'.
		dict at: $' put: '\'''.
		dict at: $" put: '\"'.
		dictArray at: 1 put: dict.
	].
	^ dict at: self ifAbsent: [ ^ self asString ]