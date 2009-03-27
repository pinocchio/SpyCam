SCParser is a PEG which parses Smalltalk code.

Grammar:

methodParser		= messagePattern & temporaries? & annotations? & methodStatments?

BASIC-BLOCK:

temporaries 		= bar & variableName + & bar
		
subExpression 		= expression & ('.' omit)
finalExpression 		= expression & ('.'? omit)
return 				= ('^' omit) & finalExpression
statements 			= subExpression * & (return | finalExpression)?



ASSIGNMENT:

assignmentOp 		= ':=' | '_'

BLOCK:

blockArguments 	= (':' & identifier) +
block 				= '[' & (blockArguments & bar) optional & temporaries optional & statements & ']'

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

string 				= ( ('''' omit) && (''''!)**  && ('''' omit) )++
stringConstant 		= string
		
symbolKeywords 	= (keyword + ':') ++
symbolString 		= string
symbol 				= symbolKeywords | identifier | binarySelector | string
symbolConstant 		= ('#' omit) && symbol

VARIABLE:

identifier 			= letter && (letter | decimalDigit) **
capitalIdentifier 	= uppercase && (letter | decimalDigit) **
argumentName 		= identifier
variableName 		= identifier
primaryVariable 	= identifier

CONVENIENCE:

bar 				= '|'
decimalDigit 		= [0-9]
uppercase 			= [A-Z]
lowercase 			= [a-z]
letter 				= lowercase | uppercase
			
SEPARATOR:

space 				= ' ' | '\t' | '\n' 								"= PEGParser separators "
commentFormat 		= '"' ('"'!) ** '"'
separator 			= (space | commentFormat) **