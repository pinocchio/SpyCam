visitor
visitObjectLayout: aPinocchioObjectLayout
	| element |
	aPinocchioObjectLayout size = 0 ifTrue: [
		^ aPinocchioObjectLayout uid: 'empty_object_layout'.
	].
	self put: aPinocchioObjectLayout 
		with: 'create_type_with_vars(Type_ObjectLayout, ',
										 aPinocchioObjectLayout size asString ,')'.
	1 to: aPinocchioObjectLayout size do: [ :index|
		element := aPinocchioObjectLayout at: index.
		self visit: element.
		stream nextPutAll: '((Type_Array)';
			nextPutAll: aPinocchioObjectLayout uid; 
			nextPutAll: (')->values[', (index - 1) asString, '] = ');
			nextPutAll: element uid;
			nextPutAll: ';'; cr.
	]
	