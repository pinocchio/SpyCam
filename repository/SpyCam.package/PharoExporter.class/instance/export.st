as yet unclassified
export
	[todo isEmpty ] whileFalse: [
		self transformNext.
		self fetchDanglingClassReferences.
	].
	^ root.