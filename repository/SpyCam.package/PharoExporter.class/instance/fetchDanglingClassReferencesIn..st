as yet unclassified
fetchDanglingClassReferencesIn: aCollection
	aCollection do: [ :member|
		(member isKindOf: PinocchioRootPackage) ifTrue: [
			self fetchDanglingClassReferencesIn: member members.
		].
		(member isKindOf: PinocchioRootScope) ifTrue: [
			self halt.
			self fetchDanglingClassReferencesIn: member members.
		].
		((member isKindOf: PinocchioClassReference) 
			and: [member isDangling]) ifTrue: [
			self addDanglingClassReference: member.
		].
	].