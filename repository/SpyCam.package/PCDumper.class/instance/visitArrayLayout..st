visitor
visitArrayLayout: aPinocchioArrayLayout 
	| element |
	aPinocchioArrayLayout size = 0 ifTrue: [
		^ aPinocchioArrayLayout uid: 'empty_array_layout'.
	].
	self put: aPinocchioArrayLayout 
		with: 'create_type_with_vars(Type_ArrayLayout, ',
				aPinocchioArrayLayout size asString ,')'.
						
	1 to: aPinocchioArrayLayout size do: [ :index|
		element := aPinocchioArrayLayout at: index.
		self visit: element.
		stream nextPutAll: '((Type_Array)';
			nextPutAll: aPinocchioArrayLayout uid; 
			nextPutAll: (')->values[', (index - 1) asString, '] = ');
			nextPutAll: element uid;
			nextPutAll: ';' ; cr.
	]