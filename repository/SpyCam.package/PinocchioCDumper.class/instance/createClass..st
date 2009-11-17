convenience
createClass: aPinocchioClass
	self flag: 'Should check the layout of the superclass'.
	self put: aPinocchioClass 
		with: 'new_Class(', aPinocchioClass superclass uid, ', ', aPinocchioClass layout uid, ')'.
		
	stream nextPutAll: '((Type_Class)';
		nextPutAll: aPinocchioClass uid;
		nextPutAll: ')->name = (Type_Symbol)';
		nextPutAll: aPinocchioClass name uid;
		nextPutAll: ';'; cr.