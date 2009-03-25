as yet unclassified
parse: input in: scope
	| memoizingString result |
	memoizingString := PEGMemoizedStringScanner new: input separator: separator.
	result := self match: memoizingString in: scope.
	
	^ result