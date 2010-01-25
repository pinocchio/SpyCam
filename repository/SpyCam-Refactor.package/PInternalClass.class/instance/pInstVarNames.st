exporting
pInstVarNames
	(self pclass respondsTo: #pInstVarNames) ifTrue: [ 
		^ self pclass pInstVarNames
	].
	^ OrderedCollection new.