as yet unclassified
uidFor: aNode
	uidCounter := uidCounter +1.
	^ (aNode astName asLowercase, uidCounter printString) asString