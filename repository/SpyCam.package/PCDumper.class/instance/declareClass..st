convenience
declareClass: aPClass
	self comment: aPClass sclass name.
	self createClass: aPClass.
	self createMetaclass: aPClass.