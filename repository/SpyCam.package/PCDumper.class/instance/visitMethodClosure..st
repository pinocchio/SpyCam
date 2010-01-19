visitor
visitMethodClosure: aPinocchioMethodClosure 
	self visit: aPinocchioMethodClosure selector.
	self visit: aPinocchioMethodClosure code.
	
	self put: aPinocchioMethodClosure 
		with: ('new_Runtime_MethodClosure(', aPinocchioMethodClosure code uid, ')').
		
	stream nextPutAll: 'store_method((Type_Class)';
		nextPutAll: aPinocchioMethodClosure pinocchioClass uid; 
		nextPutAll: ', (Type_Symbol)';
		nextPutAll: aPinocchioMethodClosure selector uid;
		nextPutAll: ', (Runtime_MethodClosure)';
		nextPutAll: aPinocchioMethodClosure uid;
		nextPutAll: ');'; cr.