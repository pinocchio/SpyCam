convenience
createSymbol: anObject 
| smb |
	smb := anObject.
	anObject isString ifTrue: [smb := ASTSymbol new symbol: anObject].
	^ symbols at: anObject printString ifAbsentPut: smb.