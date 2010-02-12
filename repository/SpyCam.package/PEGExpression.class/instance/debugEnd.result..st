debugging
debugEnd: input result: result
	PEGExpression debug
		ifTrue: [
			PEGExpression decreaseIndent.
			PEGExpression indent.
			result
				ifNil: [ 'failed' stdout; cr ]
				ifNotNil: [ 'success' stdout; cr ]]