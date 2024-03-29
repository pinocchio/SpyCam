convenience
export
	| clsReference |
	self exportBasicClasses.
	[ todo isEmpty ] whileFalse: [
		clsReference := self transformNext.
		self fetchDanglingClassReferences
	].

	(pinocchioVisitor rootScope decls select: [ :each | 
		each pclass isNil 
	]) isEmpty should be true.

	(done select: [ :each | 
		(each package at: each name) pclass isNil 
	]) isEmpty should be true.
	
	cdumper clear;
		visit: root