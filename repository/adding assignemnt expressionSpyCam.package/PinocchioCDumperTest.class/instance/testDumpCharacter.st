running
testDumpCharacter
	| character |
	character := ASTCharacter new char: 'c'.
	dumper visit: character.
	self assert: (dumper printString withBlanksTrimmed = 
				('Object ', character uid,' = (Object)new_Type_Character(L''c'');')) 