running
testDumpBoolean
	dumper visit: (visitor visit: PinocchioBoolean true).
	dumper printString withBlanksTrimmed should = ''.
	
	dumper visit: (visitor visit: PinocchioBoolean false).
	dumper printString withBlanksTrimmed should = ''.