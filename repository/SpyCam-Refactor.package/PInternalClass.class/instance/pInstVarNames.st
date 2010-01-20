exporting
pInstVarNames
	(self pclass respondsTo: #pInstVarNames) ifTrue: [ 
		^ self sclass pInstVarNames
	].
	^ OrderedCollection new.