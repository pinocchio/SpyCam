exporting
extractMethod: methodSelector
	methodSelector isSymbol ifTrue: [  
		^ self exportClass methodDict at: methodSelector
	].
	^ methodSelector.