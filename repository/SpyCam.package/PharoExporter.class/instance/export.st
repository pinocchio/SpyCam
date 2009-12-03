convenience
export
	| clsReference |
	[todo isEmpty ] whileFalse: [
		clsReference := self transformNext.
		self fetchDanglingClassReferences.
	].
	self assert: (pinocchioVisitor rootScope decls select: [ :each |
		each pinocchioClass isNil
	]) isEmpty.
	self assert: (done select: [:each |
		(each package at: each name) pinocchioClass isNil
	]) isEmpty.
	cdumper clear; visit: root.