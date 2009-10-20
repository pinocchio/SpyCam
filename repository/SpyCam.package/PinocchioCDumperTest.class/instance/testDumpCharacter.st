running
testDumpCharacter
	| character |
	character := ASTCharacter new char: 'c'.
	dumper visit: character.
	self assert: (dumper printString withBlanksTrimmed = 
				('Type_Character ', character uid,' = new_Type_Character(L''c'');')) 