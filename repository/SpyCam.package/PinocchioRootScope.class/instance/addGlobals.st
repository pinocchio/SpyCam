initialization
addGlobals
	decls at: 'nil' put: PinocchioNil nil asPConstant.
	decls at: 'true' put: PinocchioBoolean true asPConstant.
	decls at: 'false' put: PinocchioBoolean false asPConstant.