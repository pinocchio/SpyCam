visitor
visitArray: aPinocchioArray
	aPinocchioArray isEmpty ifTrue: [ ^ aPinocchioArray].
	self visitCollection: aPinocchioArray values.
	
	self put: aPinocchioArray 
		with: ('new_Type_Array_with(', ( 
					aPinocchioArray values 
						inject:  aPinocchioArray size asString
						into: [ :values :element| values,', ', element uid]),')').
	