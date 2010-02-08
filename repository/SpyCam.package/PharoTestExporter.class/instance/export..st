exporting
export: fileName
	self clear.
	self fileOutOn: fileName.
	self dumpSources .
	outStream close.
	

	