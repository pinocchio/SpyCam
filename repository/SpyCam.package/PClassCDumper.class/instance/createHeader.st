exporting
createHeader
	stream 
		nextPutAll: '#include <parser/class/'; nextPutAll: self pclass name asString; nextPutAll: '.h>'; cr; cr;
		nextPutAll: 'void init_';
		nextPutAll: self pclass name asString;
		nextPutAll: '_methods() {'; cr.