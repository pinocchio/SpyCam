tests
testString
	| parser string |

	parser := SCParser string.
	
	string := PEGMemoizedStringScanner on: '''abc'''.
	self assert: (parser match: string) = 'abc'.
	self assert: (string position = 5).
	
	string := PEGMemoizedStringScanner on: '''abc'''''.
	self assert: (parser match: string) = 'abc'.
	self assert: (string position = 5).
	
	string := PEGMemoizedStringScanner on: '''abc''''d'''.
	self assert: (parser match: string) = 'abc''d'.
	self assert: (string position = 8).