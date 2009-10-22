convenience
ast: aString
	^ parser match: (PEGMemoizedStringScanner on: aString).