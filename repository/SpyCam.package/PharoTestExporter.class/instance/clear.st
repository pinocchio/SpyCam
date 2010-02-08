initialize-release
clear
	PSymbol clearSymbolCache.
	PRootScope clearGlobals.
	self outStream: (WriteStream on: (String new: 1000000)).
	parser := scparser method.
	selectorList := Set new.
	cdumper clear.