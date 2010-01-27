exporting
pInstVarNames 
	(self pclass pclass respondsTo: #pClassInstVarNames) ifTrue: [ 
		^ self pclass pclass pClassInstVarNames
	].
	^ OrderedCollection new.