visitor
visitSmallInt: aPinocchioSmallInt 
	aPinocchioSmallInt printed ifFalse: [
		aPinocchioSmallInt printed: true.
		self 
			put: aPinocchioSmallInt
			with: ('new_Type_SmallInt(' , aPinocchioSmallInt int asString , ')') asString.
	]