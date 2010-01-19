exporting
pClassMethods
	methods := sclass pClassMethods.
	methods = #all ifTrue: [
		^ sclass class methods collect: #selector. 
	].
	methods isSymbol ifTrue: [
		^ sclass class organization listAtCategoryNamed: methods
	].
	^ methods.