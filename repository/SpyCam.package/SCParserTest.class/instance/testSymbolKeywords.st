as yet unclassified
testSymbolKeywords
	| parser string |

	parser := SCParser symbolKeywords.
	
	string := PEGMemoizedStringScanner on: 'abcd:def: '.
	self assert: ((parser match: string) = 'abcd:def:').
	self assert: (string position = 9).
	
	string := PEGMemoizedStringScanner on: 'abcd '.
	self assert: ((parser match: string) isNil).
	self assert: (string position = 0).