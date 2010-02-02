convenience
export
	| clsReference |
	self exportBasicClasses.
	[ todo isEmpty ] whileFalse: [
		clsReference := self transformNext.
		self fetchDanglingClassReferences
	].

	(pinocchioVisitor rootScope decls anySatisfy: [ :each | 
		each pclass isNil 
	]) should be false.

	(done select: [ :each | 
		(each package at: each name) pclass isNil 
	]) isEmpty should be true.
	
	cdumper clear;
		visit: root