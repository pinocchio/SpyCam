parse
parse: input
	| memoizingString result |
	memoizingString := PEGMemoizedStringScanner on: input separator: separator.
	result := self match: memoizingString.
	
	^ result