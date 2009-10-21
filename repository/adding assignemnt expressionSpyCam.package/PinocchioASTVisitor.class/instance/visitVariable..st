visitor
visitVariable: anASTVariable 
	^(PinocchioVariable new name: (anASTVariable name))