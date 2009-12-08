initialize-release
clear
	PinocchioSymbol clearSymbolCache.
	PinocchioRootScope clearGlobals.
	self outStream: (WriteStream on: '').
	parser := scparser method.
	selectorList := Set new.
	cdumper clear.