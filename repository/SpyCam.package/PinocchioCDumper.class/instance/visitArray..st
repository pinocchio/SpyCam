visitor
visitArray: aPinocchioArray
	aPinocchioArray isEmpty ifTrue: [ ^ aPinocchioArray].
	self visitCollection: aPinocchioArray.
	
	self put: aPinocchioArray 
		with: ('new_Type_Array_with(', ( 
					aPinocchioArray 
						inject:  aPinocchioArray size asString
						into: [ :values :element| 
							self assert: element uid size > 2.
							values, ', ', element uid]),')').
	