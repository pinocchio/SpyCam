exporting
pMethods
	self halt.
	methods := sclass pMethods.
	methods = #all ifTrue: [
		^ sclass methods collect: #selector. 
	].
	methods isSymbol ifTrue: [
		^ sclass organization listAtCategoryNamed: methods
	].
	^ methods.