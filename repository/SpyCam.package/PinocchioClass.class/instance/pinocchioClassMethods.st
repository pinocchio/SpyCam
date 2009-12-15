exporting
pinocchioClassMethods
	methods := cls pinocchioClassMethods.
	methods = #all ifTrue: [
		^ cls class methods collect: #selector. 
	].
	methods isSymbol ifTrue: [
		^ cls class organization listAtCategoryNamed: methods
	].
	^ methods.