visitor
visitString: aPinocchioString 
	aPinocchioString printed ifFalse: [
		aPinocchioString printed: true.
		self 
			put: aPinocchioString
			with: ('new_Type_String(L"' , aPinocchioString string , '")') asString.
	]