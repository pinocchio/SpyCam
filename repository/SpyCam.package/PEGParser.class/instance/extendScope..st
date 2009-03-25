as yet unclassified
extendScope: scope
	scopeClass ifNil: [ ^ scope ].
	^ scopeClass new: scope.