iteration
do: aBlockClosure 
	"Refer to the comment in Collection|do:."
	self size timesRepeat: [:index | 
		aBlockClosure value: (self at: index)
	]