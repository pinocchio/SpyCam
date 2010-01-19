convenience
createMetaclass: aPinocchioClass
	self put: aPinocchioClass pclass
		with: 'HEADER(', aPinocchioClass uid, ')'.