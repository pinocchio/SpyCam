visitor
visitBlock: aBlock
	^PinocchioBlock new
		paramCount: (PinocchioSmallInt new int: aBlock parameters size);
		localCount: (PinocchioSmallInt new int: aBlock temporaries size);
		body: (PinocchioArray new 
			size: (aBlock statements size);
			values: (aBlock statements accept: self))