initialize-release
clear
	self outStream: (WriteStream on: '').
	parser := scparser method.
	cdumper clear.