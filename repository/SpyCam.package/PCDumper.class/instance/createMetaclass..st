convenience
createMetaclass: aPinocchioClass
	self put: aPinocchioClass pinocchioClass
		with: 'HEADER(', aPinocchioClass uid, ')'.