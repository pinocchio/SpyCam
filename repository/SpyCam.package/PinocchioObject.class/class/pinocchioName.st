accessing
pinocchioName
	^ (self name 
			copyFrom: ('pinocchio' size + 1)
			to: self name size) capitalized asSymbol