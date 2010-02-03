exporting
generateMethodSourceStringFor: method
	outStream nextPutAll: '/*'; cr;
		nextPutAll: method getCCommentEscapedSource; cr;
		nextPutAll: '*/'; cr.