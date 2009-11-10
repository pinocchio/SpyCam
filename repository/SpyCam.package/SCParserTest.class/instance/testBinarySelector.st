tests
testBinarySelector
	| parser string |

	parser := scparser binarySelector.
	
	string := PEGStringScanner on: '+= a'.
	self assert: (parser match: string) printString = '+='.
	self assert: (string position = 2).
	
	string := PEGStringScanner on: '|= a'.
	self assert: (parser match: string) printString = '|'.
	self assert: (string position = 1).
	
	string := PEGStringScanner on: '-= a'.
	self assert: (parser match: string) printString = '-='.
	self assert: (string position = 2).
	
	string := PEGStringScanner on: '=- a'.
	self assert: (parser match: string) printString = '='.
	self assert: (string position = 1).