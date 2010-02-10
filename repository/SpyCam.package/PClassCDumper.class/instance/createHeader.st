exporting
createHeader
	stream 
		nextPutAll: '#include <parser/class/'; nextPutAll: self pclass name asString; nextPutAll: '.h>'; cr; cr.