initialize-release
clear
	PinocchioSymbol clearSymbolCache.
	self outStream: (WriteStream on: '').
	parser := scparser method.
	selectorList := Set new.
	cdumper clear.