as yet unclassified
export
	| clsReference |
	[todo isEmpty ] whileFalse: [
		clsReference := self transformNext.
		self fetchDanglingClassReferences.
	].
self halt.
	^ root.