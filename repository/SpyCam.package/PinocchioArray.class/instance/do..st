accessing
do: aBlockClosure 
	self size timesRepeat: 
		[:index | aBlockClosure value: (self at: index)]