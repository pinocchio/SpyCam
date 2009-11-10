tests
testString
	| parser string |

	parser := scparser string.
	
	string := PEGStringScanner on: ''.
	self assert: (parser match: string) isNil.
	self assert: (string position = 0).
	
	string := PEGStringScanner on: '''abc'''.
	self assert: (parser match: string) = 'abc'.
	self assert: (string position = 5).
	
	string := PEGStringScanner on: '''abc'''''.
	self assert: (parser match: string) = 'abc'.
	self assert: (string position = 5).
	
	string := PEGStringScanner on: '''abc''''d'''.
	self assert: (parser match: string) = 'abc''d'.
	self assert: (string position = 8).