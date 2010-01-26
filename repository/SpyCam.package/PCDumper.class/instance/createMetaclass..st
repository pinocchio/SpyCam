convenience
createMetaclass: aPinocchioClass
	self put: aPinocchioClass pmetaclass
		with: 'HEADER(', aPinocchioClass uid, ')'.