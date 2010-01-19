convenience
fetchDanglingClassReferencesIn: aCollection
	aCollection do: [ :member|
		(member isKindOf: PClassReference) 
			ifTrue: [
				member isDangling ifTrue: 
					[self addDanglingClassReference: member.]]
			ifFalse: [self error: 'Not a class reference'.].
	].