visitor
visitNumber: anASTNumber 
	^PinocchioConstant new constant: (PinocchioSmallInt new int: (anASTNumber asInteger))