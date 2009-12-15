convenience
export
	| clsReference |
	[ todo isEmpty ] whileFalse:
			[ clsReference := self transformNext.
			self fetchDanglingClassReferences ].
	(pinocchioVisitor rootScope decls select: [ :each | each pinocchioClass isNil ]) isEmpty should be true.
	(done select: [ :each | (each package at: each name) pinocchioClass isNil ]) isEmpty should be true.
	cdumper
		clear;
		visit: root