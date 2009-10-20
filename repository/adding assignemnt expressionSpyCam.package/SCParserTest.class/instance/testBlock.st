tests
testBlock
	| parser string result |

	parser := scparser block.

	string := PEGMemoizedStringScanner on: '[]'.
 	result := (parser match: string).
	self assert: (result class = ASTBlock).
	self assert: (result temporaries size = 0).
	self assert: (result parameters size = 0).
	self assert: (result statements size = 0).
	
	string := PEGMemoizedStringScanner on: '[||]'.
 	result := (parser match: string).
	self assert: (result class = ASTBlock).
	self assert: (result temporaries size = 0).
	self assert: (result parameters size = 0).
	self assert: (result statements size = 0).
	
	string := PEGMemoizedStringScanner on: '[:a :bcd :  e  :f | ]'.
 	result := (parser match: string).
	self assert: (result class = ASTBlock).
	self assert: (result temporaries size = 0).
	self assert: (result parameters size = 4).
	self assert: (result statements size = 0).
	
	string := PEGMemoizedStringScanner on: '[ | a   f d| ]'.
 	result := (parser match: string).
	self assert: (result class = ASTBlock).
	self assert: (result temporaries size = 3).
	self assert: (result parameters size = 0).
	self assert: (result statements size = 0).
	
	string := PEGMemoizedStringScanner on: '[ || b. d ]'.
 	result := (parser match: string).
	self assert: (result class = ASTBlock).
	self assert: (result temporaries size = 0).
	self assert: (result parameters size = 0).
	self assert: (result statements size = 2).
	
	string := PEGMemoizedStringScanner on: '[ || b. ^ d ]'.
 	result := (parser match: string).
	self assert: (result class = ASTBlock).
	self assert: (result temporaries size = 0).
	self assert: (result parameters size = 0).
	self assert: (result statements size = 2).
	
	string := PEGMemoizedStringScanner on: '[ || b. d. ]'.
 	result := (parser match: string).
	self assert: (result class = ASTBlock).
	self assert: (result temporaries size = 0).
	self assert: (result parameters size = 0).
	self assert: (result statements size = 2).