as yet unclassified
uidFor: aNode
	uidCounter := uidCounter +1.
	^ (aNode astName, uidCounter printString) asString