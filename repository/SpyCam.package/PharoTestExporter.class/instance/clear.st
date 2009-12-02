initialize-release
clear
	self outStream: (WriteStream on: '').
	parser := scparser method.
	selectorList := Set new.
	cdumper clear.