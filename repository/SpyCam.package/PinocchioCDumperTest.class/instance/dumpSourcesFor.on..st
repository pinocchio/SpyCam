test-source-output
dumpSourcesFor: methodSelector on: outStream
	| method methodSourceString ast |
	method := self class methodDict at: methodSelector.
	methodSourceString := method getSource asString.
	ast := self ast: methodSourceString.
	dumper clear.
	dumper visitCollection: ast body. 
	outStream nextPutAll: dumper asString.
