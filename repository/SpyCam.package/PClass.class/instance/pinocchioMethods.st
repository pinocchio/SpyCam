exporting
pinocchioMethods
	methods := cls pinocchioMethods.
	methods = #all ifTrue: [
		^ cls methods collect: #selector. 
	].
	methods isSymbol ifTrue: [
		^ cls organization listAtCategoryNamed: methods
	].
	^ methods.