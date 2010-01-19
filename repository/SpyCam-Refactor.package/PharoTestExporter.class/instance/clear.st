initialize-release
clear
	PSymbol clearSymbolCache.
	PRootScope clearGlobals.
	self outStream: (WriteStream on: '').
	parser := scparser method.
	selectorList := Set new.
	cdumper clear.