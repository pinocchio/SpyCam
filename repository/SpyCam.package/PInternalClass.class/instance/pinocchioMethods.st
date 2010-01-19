exporting
pinocchioMethods
	"instead of returning the cls's methods I return my methods for exporting"
	methods := self methodProvider pinocchioMethods.
	methods = #all ifTrue: [
		^ self methodProvider methods collect: #selector. 
	].
	methods isSymbol ifTrue: [
		^ self methodProvider organization listAtCategoryNamed: methods
	].
	^ methods.