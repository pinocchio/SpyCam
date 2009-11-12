as yet unclassified
fetchDanglingClassReferencesIn: aCollection
	aCollection do: [ :member|
		(member isKindOf: PinocchioClassReference) 
			ifTrue: [
				member isDangling ifTrue: 
					[self addDanglingClassReference: member.]]
			ifFalse: [self error: 'Not a class reference'.].
	].