tests
testTemporaries
	| parser string |
	parser := scparser temporaries.
	string := PEGStringScanner on: '|a b c|'.
	((parser match: string) collect: #name) asArray should = #('a' 'b' 'c').
	string position should = 7.
	string := PEGStringScanner on: '|  a b c  |'.
	((parser match: string) collect: #name) asArray should = #('a' 'b' 'c').
	string position should = 11