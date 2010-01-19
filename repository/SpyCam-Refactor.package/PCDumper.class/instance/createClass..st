convenience
createClass: aPinocchioClass
	| classLayout |
	self flag: 'Should check the layout of the superclass'.
	classLayout := aPinocchioClass pclass layout.
	self visit: classLayout.
	self visit: aPinocchioClass name.
	self visit: aPinocchioClass layout.
	self put: aPinocchioClass
		with:
			'new_Class_withMeta((Object)' , aPinocchioClass superclass uid , ', ' , aPinocchioClass layout uid , ', ' ,
					classLayout uid , ')'.
	stream
		nextPutAll: '((Type_Class)';
		nextPutAll: aPinocchioClass uid;
		nextPutAll: ')->name = (Type_Symbol)';
		nextPutAll: aPinocchioClass name uid;
		nextPutAll: ';';
		cr.
	self createMetaclass: aPinocchioClass.
	self createClassMethods: aPinocchioClass pclass methods.
	currentClass should = aPinocchioClass