exporting
generateMethodSourceStringFor: method
	outStream nextPutAll: '/*'; cr;
		nextPutAll: method asString asString; cr;
		nextPutAll: '*/'; cr.