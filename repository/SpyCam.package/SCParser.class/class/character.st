as yet unclassified
character
	^ ('[]{}()_^;$#:-|.' asPEGChoice) | PEGParser separators <= self decimalDigit <= self letter <= self specialCharacter