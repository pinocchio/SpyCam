tests
testString
	| parser string |

	parser := scparser string.
	
	string := PEGMemoizedStringScanner on: ''.
	self assert: (parser match: string) isNil.
	self assert: (string position = 0).
	
	string := PEGMemoizedStringScanner on: '''abc'''.
	self assert: (parser match: string) = 'abc'.
	self assert: (string position = 5).
	
	string := PEGMemoizedStringScanner on: '''abc'''''.
	self assert: (parser match: string) = 'abc'.
	self assert: (string position = 5).
	
	string := PEGMemoizedStringScanner on: '''abc''''d'''.
	self assert: (parser match: string) = 'abc''d'.
	self assert: (string position = 8).