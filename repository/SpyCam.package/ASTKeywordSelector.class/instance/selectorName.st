accessing
selectorName
	^ keywords
		inject: ''
		into: [:name :keyword | keyword , name, ':']