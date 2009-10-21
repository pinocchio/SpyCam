visitor
visitString: anASTString 
	^PinocchioString new string: (anASTString string)
