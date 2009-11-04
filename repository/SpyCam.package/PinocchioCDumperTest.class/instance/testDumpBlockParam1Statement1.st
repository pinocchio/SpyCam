running
testDumpBlockParam1Statement1
	| ast result |
	ast := self ast: '[:a| 1]'.
	dumper visit: ast.
	ast class should = PinocchioBlock.
	dumper printString