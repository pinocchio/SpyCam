SCParser is a PEG which parses Smalltalk code.

Grammar:

temporaries 		= bar & variableName + & bar
methodParser		= messagePattern & temporaries? & annotations? & methodStatments?

ASSIGNMENT:

assignmentOp 		= ':=' | '_'

BLOCK:

blockArguments 	= (':' & identifier) +

SELECTOR:

keyword 			= identifier && (':' omit)
keywordsArguments = (keyword & argumentName) +

binarySelector 		= ( ( (specialCharacter | '-') && specialCharacter ** ) | '|' )
binaryArgument 	= binarySelector & argumentName

unarySelector 		= identifier && (':'! omit)
		
messagePattern 		= keywordsArguments | binaryArgument | unarySelector

LITERAL:

specialCharacter 	= '+' | '*' | '/' | '\' | '~' | '<' | '>' | '=' | '@' | '%' | '?' | '!' | '&' | '`' | ','
character 			= ('[' | ']' | '{' | '}' | '(' | ')' | '_' | '^' | ';' | '$' | '#' | ':' | '-' | '|' | '.') | space | decimalDigit | letter | specialCharacter
characterConstant 	= '$' && character

string 				= ( ('''' omit) && (''''!)**  && ('''' omit) ) ++
stringConstant 		= string
		
symbolKeywords 	= keyword ++
symbolString 		= string
symbol 				= symbolKeywords | identifier | binarySelector | symbolString
symbolConstant 		= ('#' omit) && symbol

VARIABLE:

identifier 			= letter && (letter | decimalDigit) **
capitalIdentifier 	= uppercase && (letter | decimalDigit) **
argumentName 		= identifier
variableName 		= identifier
primaryVariable 	= identifier

CONVENIENCE:

bar 				= '|'
decimalDigit 		= 0-9
letter 				= lowercase | uppercase
uppercase 			= A-Z
lowercase 			= a-z
			
SEPARATOR:

space 				= ' ' | '\t' | '\n' 								"= PEGParser separators "
commentFormat 		= '"' ('"'!) ** '"'
separator 			= (space | commentFormat) **