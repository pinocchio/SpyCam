accessing
selector: anObject	
	| string |
	selector := anObject. 
	string := selector asString.
	string size > 1 ifTrue: [
		self assert: ((string at: (string size -1 )) ~= ':').
	]