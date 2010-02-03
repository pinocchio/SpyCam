convenience
createMethodSourceCommentFor: aPMethod 
	| method sclass source |
	[	
		[
			sclass := Smalltalk at: currentClass name asSymbol
		] on: Error do: [:e|
			sclass := Smalltalk at: currentClass sclass name asSymbol.
		].
		method := sclass lookupSelector: aPMethod selector asSymbol.
		stream nextPutAll: '//';
			nextPutAll: method getCCommentEscapedSource; cr.
	] on: Error do: [:e|]