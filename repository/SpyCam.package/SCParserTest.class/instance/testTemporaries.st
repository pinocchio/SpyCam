tests
testTemporaries
	| parser string |

	parser := scparser temporaries.
	
	string := PEGStringScanner on: '|a b c|'.
	self assert: (((parser match: string) collect: #name) asArray = #('a' 'b' 'c')).
	self assert: (string position = 7).
	
	string := PEGStringScanner on: '|  a b c  |'.
	self assert: (((parser match: string) collect: #name) asArray = #('a' 'b' 'c')).
	self assert: (string position = 11).