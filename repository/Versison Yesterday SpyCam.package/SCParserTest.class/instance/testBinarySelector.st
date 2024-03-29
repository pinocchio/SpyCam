tests
testBinarySelector
	| parser string |

	parser := SCParser binarySelector.
	
	string := PEGMemoizedStringScanner on: '+= a'.
	self assert: (parser match: string) = '+='.
	self assert: (string position = 2).
	
	string := PEGMemoizedStringScanner on: '|= a'.
	self assert: (parser match: string) = '|'.
	self assert: (string position = 1).
	
	string := PEGMemoizedStringScanner on: '-= a'.
	self assert: (parser match: string) = '-='.
	self assert: (string position = 2).
	
	string := PEGMemoizedStringScanner on: '=- a'.
	self assert: (parser match: string) = '='.
	self assert: (string position = 1).