accessing
objectName
	^ (self class name 
			copyFrom: ('pinocchio' size + 1)
			to: self class name size) capitalized